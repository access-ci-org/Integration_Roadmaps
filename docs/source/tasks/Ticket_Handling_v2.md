# Ticket Handling v2

Infrastructure Integration Roadmap Task

**Task Type(s)**: Support  
**Start by phase**: Integration  
**Complete by phase**: Ongoing  
**RP role(s)**: Researcher support / ticket handling contact(s), most other RP contacts

## Summary

ACCESS resource and online service operators will be assigned tickets for issues or questions about their resources and online services. In response they will monitor the ticket system for tickets assigned to them, triage them as necessary, reassign them to other staff or organizations if necessary, resolve issues, and close tickets once the request is addressed.

## Prerequisite tasks

1.  [*Infrastructure Description v2*](Infrastructure_Description_v2.md)

## Support Information

For assistance with this task or with using the ticket system:

1.  Open an *ACCESS Integration and Operation Support Request* using using [*this page*](https://operations.access-ci.org/open-operations-request)

2.  In the new ticket form select the “*ACCESS Operational Support Issues*” type “*ACCESS-wide: Ticket System - ACCESS-related Ticketing Systems*“

## Detailed Instructions

### Ticket Routing Queue Setup

If your organization/RP integrated other resources or services in the past and already has ticket routing queues, you can use those for new resources and you will not need to request new ones.

To request new organization/RP specific routing queues open an *ACCESS Integration and Operation Support Request* as described above. A ticket system administrator will configure the ticket system with queues for your organization/RP and inform you when they are configured. Please review the “For RP queues” and “For ACCESS awardee queues” sub-sections below for additional details on what to include in your ticket.

#### For RP queues

If you are a resource provider (RP) integrating a resource, provide a short organization name or abbreviation that can be used to define your RP queue. Theis queues will be named “\<short_name\>”, like “Jetstream-2” or “Delta”.

Identify for this queue the name and email addresses of:

1.  People that can browse tickets (agents)

2.  People who will be watchers to receive email notifications (watchers)

Note: Most of the time both agents and watchers are the same. But, if some agents do not want to be spammed with emails they may opt from being a watcher.

#### For ACCESS awardee queues

If you are an ACCESS awardee integrating a service, provide a short name or abbreviation for new track specific queues you want setup. The queue names should follow these guidelines:

- [*https://docs.google.com/document/d/1sIB9PhXnQ0BXFsgNNrx9JMUpkWje5zvrUQfcnmr-C6s*](https://docs.google.com/document/d/1sIB9PhXnQ0BXFsgNNrx9JMUpkWje5zvrUQfcnmr-C6s)

Identify for each new queue the name and ACCESS usernames of:

1.  People that can UPDATE tickets in the queue

2.  Person who will be assigned tickets by default (this person will be able to reassign tickets to anyone else with queue access)

Also provide any keywords related to your services that would help individuals recognize that a ticket should be routed to this queue. For example, an ACCESS-ACO-Support queue might have keywords “confluence” or “access wiki” associated with it to indicate that access wiki or confluence issues should be assigned to this queue.

### Ticket Handling

Resource and online service operating organization staff will receive email from the ticket system, or access the ticket system online at:

- [*https://access-ci.atlassian.net/browse/ATS*](https://access-ci.atlassian.net/browse/ATS)

Tickets will be assigned to a queue and agents can assign tickets to themselves from their queue.

Ticket handling typically involves these activities.

### Reassign Externally, Accept, or Reassign Internally

The default assignee or anyone with update access to tickets in the queue should first determine if the ticket was properly assigned and if not, reassign to a different queue.

If the ticket was assigned to the correct queue, they may reassign it to anyone else in their organization with ticket system access, or retain ownership of the ticket.

Fr more details please see the documementation [*https://access-ci.atlassian.net/wiki/spaces/ATSupport/overview*](https://access-ci.atlassian.net/wiki/spaces/ATSupport/overview)

<sub>
<ul class="document-meta-data">
    <li><strong>Status</strong>: Production</li>
    <li><strong>Version</strong>: v2</li>
    <li><strong>Task Expert(s)</strong>: Dinuka DeSilva, ACCESS Operations; Alana Romanella, ACCESS Support</li>
</ul>
</sub>
<br/>
<br/>
