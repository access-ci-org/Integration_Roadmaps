# AMIE and Usage Reporting v1

Infrastructure Integration Roadmap Task

**Task Type(s)**: Technology  
**Start by phase**: Planning  
**Complete by phase**: Operations  
**RP role(s)**: AMIE technical contact(s)

## Summary

Resource Providers will implement a client for the Account Management Information Exchange (AMIE) protocol, to receive allocations information from ACCESS Allocations and report necessary information back to ACCESS.

## Prerequisite tasks

None

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

The Resource Provider must first identify a technical contact, who will have an initial kick-off meeting with the Allocations team to discuss the overview of AMIE implementation. The RP technical team will then follow the [*AMIE Documentation*](https://drive.google.com/file/d/1ZBiOAZIwdppER4LOK_9FTdVtgNqQgGEx/view?usp=sharing) to create a test client. This client must be capable of responding to ACCESS allocation AMIE packets, and respond appropriately, creating or modifying the allocations information in the local site’s infrastructure. The Allocations team will be available to consult with the development team to assist with technical questions. After the test client has been created and thoroughly tested, the RP will notify the Allocations team that the AMIE implementation is ready for production. They will be given a production API key, and the AMIE site will be activated in production.

The AMIE documentation also contains information about the Usage Reporting API. RPs must create a client that will report the local usage data from their site and post this usage back to Allocations via the API.

The RP will be expected to maintain a technical contact with the Allocations team, to be able to respond to technical questions or error reports, or to adjust the client implementation as needed in the future.

## Document Management

**Status**: Official

**Official date**: 4/24/2023 1/23/2023

**Coordinators**: Nathan Tolber & Rob Light, ACCESS Allocations

**Last revised date**: 1/23/2023

**Retired date**:
