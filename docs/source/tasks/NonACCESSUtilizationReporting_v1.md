# Utilization Reporting for non-ACCESS allocated resources

Infrastructure Integration Roadmap Task

**Task Type(s)**: Technology  
**Start by phase**: Integration  
**Complete by phase**: Operations  
**RP role(s)**: UUtilization data contact(s), System administrator(s)

## Summary

ACCESS Metrics provides [ACCESS XDMoD](https://xdmod.access-ci.org) and
various data reporting and analysis services for ACCESS-allocated resources and
for other NSF-funded projects such as the [Campus Cyberinfrastructure
program](https://new.nsf.gov/funding/opportunities/campus-cyberinfrastructure-cc).

This task involves setting up the data transfer of utilization data for a compute
resource that is not allocated by ACCESS. This includes compute resources that
are funded by NSF's CC* program that are expected to work cooperatively with
ACCESS award activities and services.

The data reporting will be via a *Federated XDMoD* portal that is managed by ACCESS Metrics. This
federated XDMoD portal is based on the Open XDMoD software and is configured
to be able to report across multiple NSF funded projects and resources. The data
will be made available to NSF staff.

### Required information:

1. Resource Specification information including: number of compute nodes, number of compute cores, number of GPU devices, whether 
resource is node or core allocated, whether compute node sharing is enabled.
1. Information about the system users: username on compute resource, first name, last name, organization name
1. Resource manager accounting log data.

### Desirable information:

1. Unique identifiers for system users such as an ORCID iD or ACCESS ID.
1. Allocation information such as project name, project PI, project field-of-science, funding agency

## Prerequisite tasks

1.  [*Resource Metrics Data Availability Assessment v1*](Resource_Metrics_Data_Availability_Assessment_v1.md)

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

The required log data should be periodically sent to ACCESS Metrics. ACCESS Metrics supports two types of data transfer
mechanism. The choice of data transfer mechanism depends on the RP preferences:

1.  Data transfer via REST endpoint (preferred)

    OR

1.  Globus Transfer with scheduled transfers

The REST endpoint data transfer mechanism is preferred for small amounts of log data transfer (less than 2 GB per day).
the Globus Transfer mechanism is more appropriate for large file transfers (but can be used for smaller amounts of data if desired).

### REST data transfer

To send data to ACCESS via REST you need an API Token. We will generate one and
email it to you. The token should be saved in a file on the system from which
the files will be sent. The token file should have the following contents,
replacing `TOKEN` with your token, and setting permissions so only the file
owner can read it:

```
Authorization: Bearer TOKEN
```

Below is an example of how to send a file to the `resource-manager-logs`
endpoint using `curl`, replacing `FILE` with the path to the file to send and
`TOKEN_FILE` with the path to the token file (note the `@` is required in both
cases):

```
curl -H @TOKEN_FILE -F file=@FILE https://data.ccr.xdmod.org/resource-manager-logs
```

An example Bash script for sending `sacct` logs is shown below. See the comment
at the top for information on usage.

```bash
#!/bin/bash

###############################################################################
# post-sacct-to-ccr.sh
#
# Send sacct logs via cURL HTTPS POST requests to the XDMoD team at the
# University at Buffalo Center for Computational Research (CCR).
#
# By default, this script sends a log of yesterday's jobs.
#
# The days to send can be specified via the options:
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
# This script requires an API token provided by the XDMoD team at CCR. A file
# should be created with the following contents, replacing TOKEN with the
# token, and only the user running this script should have read permissions to
# it:
#
#     Authorization: Bearer TOKEN
#
# This script will look for the token file at ~/.xdmod-ccr-api-token
# The path to the token file can be changed with the -t option.
#
# A temporary directory will be created at /tmp/post-sacct-to-ccr, and
# temporary files will be created in that directory, sent, and then deleted.
# The temporary directory path can be changed with the -d option.
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
while getopts ':s:e:n:t:d:' opt; do
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
        t)
            token_file="$OPTARG"
            ;;
        d)
            tmp_dir="$OPTARG"
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
if [ -z "$start_date" ] && [ -z "$end_date" ]; then
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
    echo "$script_name: start date cannot be after end date" >&2
    exit 1
fi
if [ -z "$token_file" ]; then
    token_file=~/.xdmod-ccr-api-token
fi
if [ ! -f "$token_file" ]; then
    echo "$script_name: token file '$token_file' does not exist" >&2
    exit 1
fi
if [ -z "$tmp_dir" ]; then
    tmp_dir='/tmp/post-sacct-to-ccr'
fi

# Make the temporary directory.
mkdir -p $tmp_dir

# For each day, create, send, and delete the log file.
date=$start_date_inclusive_formatted
while [[ "$date" < "$end_date_exclusive_formatted" ]]; do
    file=$tmp_dir/$date.json
    TZ=UTC sacct --duplicates --json --noheader \
        --allclusters --allusers \
        --starttime ${date}T00:00:00 --endtime ${date}T23:59:59 \
        > $file
    response=$(curl -s -H @"$token_file" -F file=@$file $url)
    rm -f $file
    if [ "$response" != '{"status":"success"}' ]; then
        echo $response >&2
        exit 1
    fi
    date=$(date -d "$date + 1 day" $date_format)
done
```

### Globus Transfer

To setup Globus Transfer, please provide the name or names of the globus accounts that will be used for data transfer. ACCESS Metrics will create a globus share and give write permissions to the user accounts provided by the RP. Instructions for setting up the periodic transfers using the globus tools are either [*Globus timer cli tool*](https://pypi.org/project/globus-timer-cli/) or the web-based [*Globus Timers*](https://www.globus.org/blog/scheduled-and-recurring-transfers-now-available-globus-web-app).

### Required Log files

|  Log Type    |  Description  | Filename | Update Frequency |
| ------------ | ------------- | -------- | ---------------- |
| Resource Manager Log Files | Daily dumps of the resource manager log files. Use the format described in the [Open XDMoD shredder documentation](https://open.xdmod.org/shredder.html). | Use the filename direct from the resource manager logs, or if using slurm's `sacct` use `slurm.log` | Daily |
| Name mapping               | Mapping between the username on the resource and a persons full name. Use the format described in the [Open XDMoD Names documentation](https://open.xdmod.org/user-names.html). For Regional Computing resources that support users from multiple different institutions then the User's instittion should also be included in the file contents as an additional column after the user's last name. | `names.csv` | Upload new copy of the file when new users are added to the resource. |
| Resource Specifications    | Information about the number of compute devices (nodes, cores, GPUs) on the resource. The file format supports tracking resource changes over time. Use the format described in the [Open XDMoD resource specs](https://open.xdmod.org/10.5/configuration.html#resource_specsjson) | `resource_specs.json` | Whenever the resource size changes |

## Document Management

**Status**: Draft

**Official date**: TBD

**Coordinators**: **Joseph White, ACCESS Metrics**

**Last revised date**: 2024-07-31

**Retired date**:
