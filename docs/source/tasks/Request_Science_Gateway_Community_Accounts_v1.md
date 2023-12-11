# Request Science Gateway Community Accounts v1

Infrastructure Integration Roadmap Task

**Task Type(s)**: Coordination, Support  
**Start by phase**: Integration  
**Complete by phase**: Operations  
**Operator role(s)**: PI, CoPI, or gateway allocation administrator

## Summary

Science gateways use community accounts to provide single accounts for all gateway users.

## Prerequisite tasks

1.  The gateway provider must have completed [*Science Gateways Description*](Science_Gateway_Description_v1.md)

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

Community accounts are UNIX accounts on ACCESS resource providers that can be used by a science gateway’s users through
the science gateway’s user or programming interface. Science gateway providers request community accounts in individual 
ticket requests through the [ACCESS ticketing system](https://access-ci.atlassian.net/servicedesk/customer/portal/2) 
directed to the ACCESS Resources Providers, the ACCESS Integration Coordinator assigned can help make these requsts.
- Navigate to the [ACCESS ticketing system](https://access-ci.atlassian.net/servicedesk/customer/portal/2) 
- Select “Allocations:XRAS” on “ACCESS Operations Issue Type”
- Select “ACCESS Resource Provider Resource” on “Infrastructure Type”
- Select “User Support Question” on “ACCESS Support Issue”
- Select the “ACCESS Resource Provider Resource” from the dropdown
- Submit
- Followup with any discussions on the ticket

Once the ticket is submitted, the allocations team would do what is necessary and keep posting on the ticket. When it's done, 
the science gateway provider should confirm on the ticket that the community accounts are created and accessible. It may 
take hours to days for accounts to be created after registration.

The science gateway provider may need to take additional, resource provider-specific steps to enable the account. This 
may include, for example, providing specific IP addresses or registering SSH keys that the science gateway will use when 
accessing the resource provider.

## Document Management

**Status**: Official

**Official date**: 4/24/2023 4/10/2023

**Coordinators**: Rob Quick, ACCESS Operations

**Last revised date**: 4/3/2023

**Retired date**:
