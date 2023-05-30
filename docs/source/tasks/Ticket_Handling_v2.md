# Ticket Handling v2

Infrastructure Integration Roadmap Task

**Task Type(s)**: Support  
**Start by phase**: Integration  
**Complete by phase**: Ongoing  
**RP role(s)**: Researcher support contact(s), most other RP contacts

## Summary

**\*\*NOTE\*\* This task will be updated incrementally as the transition from Request Tracker (RT) to Jira Service Management (JSM) is completed.**

ACCESS resource and online service operators will be assigned tickets for issues or questions about their resources and online services. They will monitor the ticket system for tickets assigned to them, triage them as necessary, reassign the request to other staff or organizations if necessary, address requests they are able to address, and close the request once it is resolved.

## Prerequisite tasks

1.  [*Infrastructure Description v2*](Infrastructure_Description_v2.md)

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

### Ticket Routing Queue Setup

If your organization/RP integrated other resources or services in the past and already has ticket routing queues, you can use those for new resources and you will not need to request new ones.

To request new organization/RP specific routing queues submitting an ACCESS ticket using the form listed here [*https://access-ci.atlassian.net/servicedesk/customer/portal/2/group/3/create/32*](https://access-ci.atlassian.net/servicedesk/customer/portal/2/group/3/create/32).

Please use the “ACCESS Operations Issue Type” of “ACCESS-wide:Ticket system - ACCESS related ticketing system”. In response to your request an ACCESS ticket system administrator will configure the ticket system with queues for your organization/RP and inform you when they are configured. Please review the “For RP queues” and “For ACCESS awardee queues” sub-sections below for additional details on what to include in your ticket.

#### For RP queues

If you are a resource provider (RP) integrating a resource, provide a short organization name or abbreviation that can be used to define your RP queue. Theis queues will be named “\<short_name\>”, like “Jetstream-2” or “Delta”.

Identify for this queue the name and ACCESS usernames of:

1.  People that can UPDATE tickets in the queue

2.  Person who will be assigned tickets by default (this person will be able to reassign tickets to anyone else with queue access)

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

FOr more details please see the documementation [*https://access-ci.atlassian.net/wiki/spaces/ATSupport/overview*](https://access-ci.atlassian.net/wiki/spaces/ATSupport/overview)

## Document Management

**Status**: Official

**Official date**: 4/24/2023 3/24/2023

**Coordinators**: JP Navarro, ACCESS Operations; Alana Romanella, ACCESS Support

**Last revised date**: 4/5/2023

**Retired date**:
