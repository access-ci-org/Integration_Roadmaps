#!/bin/bash

###############################################################################
# post-sacct-to-ccr.sh v2025-04-15
#
# This script sends sacct logs in JSON format via cURL HTTPS POST requests to
# the XDMoD team at the University at Buffalo Center for Computational Research
# (CCR).
#
# The script uses a directory to read and write files. Before running the
# script, you will need to create this directory. By default the script will
# look for this directory at ~/post-sacct-to-ccr. To use a different directory,
# remember to use the -d option once you run the script (not yet, continue to
# follow these instructions first). These instructions will refer to
# ~/post-sacct-to-ccr for all the examples; replace with your preferred
# directory if you will be running with -d.
#
# The script requires an API token provided by the XDMoD team at CCR. Before
# running the script, create a file at ~/post-sacct-to-ccr/.token and give it
# the following contents, replacing TOKEN with the token, and set the file
# permissions such that only the user running this script has read permissions:
#
#     Authorization: Bearer TOKEN
#
# The script will write two types of files to the directory: 1) temporary
# files that will be sent and then deleted, and 2) "last-send" files to record
# the last day of logs that was previously sent; this is so the script can be
# run in a cron job and automatically catch up if the web server receiving the
# logs had an outage.
#
# By default, this script sends a log of yesterday's jobs.
#
# If the script is run with the -a option, it will instead look for a
# "last-send" file at ~/post-sacct-to-ccr/last-send.txt containing a date in
# YYYY-MM-DD format; the script will send logs for each day after the day
# specified in that file through yesterday, inclusive. In the process, each
# time the script successfully sends a day, it will replace the contents of the
# "last-send" file with that day. Note that if -a is not specified, the script
# will not write to the "last-send" file.
#
# Otherwise, specific days can be sent via combinations of these options:
#     -s (start date, inclusive)
#     -e (end date, inclusive)
#     -n (day count)
# as follows:
#     - If only -e is specified, only that day's logs will be sent.
#     - If only -s is specified, logs will be sent from that day through
#       yesterday, inclusive.
#     - If only -n is specified, logs will be sent from that many days ago
#       through yesterday, inclusive.
#     - If both -s and -e are specified, logs will be sent from the start
#       date through the end date, inclusive.
#     - If both -s and -n are specified, the number of days will be sent
#       starting from the start date, inclusive.
#     - If both -e and -n are specified, the number of days will be sent
#       ending on the end date, inclusive.
#     - If all three options are specified, an error is thrown.
#
# The -s and -e options can be in any format recognized by the command
# `date -d`. The -n option must be an integer. The latest day that can be
# sent is yesterday; attempting to send a later date will throw an error.
#
# The script will create and send one log file for each day in the given date
# range. By default, each file will have the day as its name, in the format
# YYYY-MM-DD.json. The files can be given a prefix using the -p option; the
# resulting files will instead be named prefix.YYYY-MM-DD.json. If the -a and
# -p options are used together, the "last-send" file used by the script will be
# ~/post-sacct-to-ccr/prefix.last-send.txt.
#
# If you have any questions, comments, or concerns, you can contact the XDMoD
# team the following ways:
# - For ACCESS RPs, please create a ticket at
#   https://support.access-ci.org/open-a-ticket and for the "ACCESS User
#   Support Issue," choose "XDMOD Question."
# - Otherwise, please send email to ccr-xdmod-help@buffalo.edu
###############################################################################

# Exit if any command fails.
set -eo pipefail

script_name='post-sacct-to-ccr.sh'
url='https://data.ccr.xdmod.org/resource-manager-logs'

# Parse arguments.
while getopts ':s:e:n:d:p:a' opt; do
    case $opt in
        s)
            start_date="$OPTARG"
            ;;
        e)
            end_date="$OPTARG"
            ;;
        n)
            day_count="$OPTARG"
            ;;
        d)
            io_dir="$OPTARG"
            ;;
        p)
            prefix="$OPTARG."
            ;;
        a)
            all=true
            ;;
        \?)
            echo "$script_name: invalid option -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "$script_name: missing argument for -$OPTARG" >&2
            exit 1
            ;;
    esac
done

# Validate arguments.
if [ -z "$io_dir" ]; then
    io_dir=~/post-sacct-to-ccr
fi
if [ ! -d "$io_dir" ]; then
    echo "$script_name: '$io_dir' is not a directory" >&2
    exit 1
fi
token_file=$io_dir/.token
if [ ! -f $token_file ]; then
    echo "$script_name: token file '$token_file' does not exist" >&2
    exit 1
fi
if [ "$all" = true ]; then
    if [ -n "$day_count" ] || [ -n "$start_date" ] || [ -n "$end_date" ]; then
        echo "$script_name: it is invalid to specify both -a and any of -n, -s, and -e" >&2
        exit 1
    fi
    last_send_file=$io_dir/${prefix}last-send.txt
    if [ ! -f $last_send_file ]; then
        echo "$script_name: -a requires a file, could not find one at '$last_send_file'" >&2
        exit 1
    fi
    start_date="$(tr -d '[[:space:]]' < $last_send_file) + 1 day"
fi
if [ -n "$day_count" ] && [ -n "$start_date" ] && [ -n "$end_date" ]; then
    echo "$script_name: it is invalid to specify all of -n, -s, and -e" >&2
    exit 1
fi
date_format='+%Y-%m-%d'
if [ -n "$day_count" ]; then
    if [[ ! "$day_count" =~ ^[0-9]+$ || "$day_count" -lt 1 ]]; then
        echo "$script_name: day count must be a positive integer" >&2
        exit 1
    fi
    if [ -n "$start_date" ]; then
        start_date_inclusive_formatted=$(date -d "$start_date" $date_format)
        end_date="$start_date_inclusive_formatted + $day_count days - 1 day"
    fi
fi
if [ -z "$end_date" ]; then
    end_date='-1 day'
fi
end_date_inclusive_formatted=$(date -d "$end_date" $date_format)
end_date_exclusive_formatted=$(date -d "$end_date_inclusive_formatted + 1 day" $date_format)
if [ -n "$day_count" ] && [ -z "$start_date" ]; then
    start_date="$end_date_exclusive_formatted - $day_count days"
fi
if [ -z "$start_date" ]; then
    start_date=$end_date_inclusive_formatted
fi
start_date_inclusive_formatted=$(date -d "$start_date" $date_format)
yesterday=$(date -d '-1 day' $date_format)
if [[ "$end_date_inclusive_formatted" > "$yesterday" ]]; then
    echo "$script_name: end date cannot be after yesterday" >&2
    exit 1
fi
if [[ "$start_date_inclusive_formatted" > "$end_date_inclusive_formatted" ]]; then
    if [ "$all" = true ]; then
        echo "$script_name: nothing to send, date in '$io_dir/${prefix}last-send.txt' is not before yesterday" >&2
    else
        echo "$script_name: start date cannot be after end date" >&2
    fi
    exit 1
fi

# For each day, create, send, and delete the log file.
date=$start_date_inclusive_formatted
while [[ "$date" < "$end_date_exclusive_formatted" ]]; do
    file=$io_dir/$prefix$date.json
    TZ=UTC sacct --duplicates --json --noheader \
        --allclusters --allusers \
        --starttime ${date}T00:00:00 --endtime ${date}T23:59:59 \
        > $file
    response=$(curl -sS -H @"$token_file" -F file=@$file $url)
    rm -f $file
    if [ "$response" != '{"status":"success"}' ]; then
        echo $response >&2
        exit 1
    fi
    if [ "$all" = true ]; then
        echo $date > $io_dir/${prefix}last-send.txt
    fi
    date=$(date -d "$date + 1 day" $date_format)
done
