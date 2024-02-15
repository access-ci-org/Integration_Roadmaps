# Request Science Gateway Community Accounts

Infrastructure Integration Roadmap Task

**Task Type(s)**: Coordination, Support  
**Start by phase**: Integration  
**Complete by phase**: Operations  
**Operator role(s)**: PI, CoPI, or gateway allocation administrator

## Summary

Science gateways use community accounts to provide single accounts for all gateway users.

**Note** : One community account must have been attached only to one science gateway.

## Prerequisite tasks

1.  The gateway provider must have completed [Science Gateways Description](Science_Gateway_Description_v1.md)

## Support Information

For assistance with this task see the **Support Information** section in the [Infrastructure Integration Roadmap Description](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/gateway/ACCESS_Integrated_Science_Gateway_-_Integration_Roadmap_Description.html#support-information).

## Detailed Instructions

Community accounts are UNIX accounts on ACCESS resource providers that can be used by a science gateway’s users through
the science gateway’s user or programming interface. Science gateway providers request community accounts in individual 
ticket requests through the [ACCESS ticketing system](https://access-ci.atlassian.net/servicedesk/customer/portal/2/group/3/create/32) 
directed to the ACCESS Resources Providers, the ACCESS Integration Coordinator assigned can help make these requsts.
- Navigate to the [ACCESS ticketing system](https://access-ci.atlassian.net/servicedesk/customer/portal/2/group/3/create/32) 
- Select "ACCESS Integration and Operation Support Requests" on "What can we help you with?"
- Select “Allocations:XRAS” on “ACCESS Operational Support Issues”
- Select “ACCESS Resource Provider Resource” on “Infrastructure Type”
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

**Official date**: 02/01/2024

**Coordinators**: Dinuka De Silva, ACCESS Operations

**Last revised date**: 01/30/2024

**Retired date**: NA
