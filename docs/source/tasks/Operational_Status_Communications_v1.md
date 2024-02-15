# Operational Status Communications v1

Infrastructure Integration Roadmap Task

**Task Type(s)**: Coordination, Support  
**Start by phase**: Integration  
**Complete by phase**: Ongoing  
**RP role(s)**: Resource news and outages publisher(s), System administrator(s), Researcher support contact(s)

## Summary

ACCESS resource providers RPs, ACCESS projects (tracks), and online service operators communicate planned and unplanned outages, and configuration changes, using the ACCESS Operations Infrastructure News system.

## Prerequisite tasks

1.  [*Resource Description V2*](Infrastructure_Description_v2.md)

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

### Initial Setup

First, staff responsible for posting infrastructure news must have logged in once to the ACCESS Operations portal at [https://operations.access-ci.org/](https://operations.access-ci.org/) before they can be granted access.

Next, the Resource Integration Coordinator must submit the names of staff that need permission to post infrastructure news by opening an Operations Request through the [*Operations Portal Help Page*](https://operations.access-ci.org/help). Please use the Request Title “ACCESS Operations Infrastructure News Editor access” and the ACCESS Operational Support Issues "Operations: Portal". Staff that logged in per the previous paragraph will then be granted Infrastructure News Editor permissions.

### Recurring Activity - Status Communications

Authorized staff can:

- [*Enter new infrastructure news*](https://operations.access-ci.org/infrastructure_news)

End Date:

- For Reconfigurations leave the End Date blank unless it is temporary

- For Outages leave the End Date blank if unknown, then update the news item once the End Date is known

Distribution Options:

- Select how to communicate the new item. As of February 2023 the only implemented option is “Email only subscribers”. Other Distributions Options are under development.

Update previously posted news:

- [*Posted Infrastructure News*](https://operations.access-ci.org/infrastructure_news)

Posts can be edited to make minor corrections or to update the End Date for outages.

To communicate an significant update to news, edit the posting and prepend the following to the beginning of the original Content:

> Update as of \<Month-Day-Year\>
>
> \<update text\>
>
> Original News
>
> \<original news content\>

Posted/updated infrastructure news should appear in the [*ACCESS Support Portal - Outages Page*](https://support.access-ci.org/outages) within 10 minutes.

### API Access - Status Communications

Resource providers and ACCESS projects may access infrastructure news through an API at:

- [*https://operations-api.access-ci.org/docs/*](https://operations-api.access-ci.org/docs/)

Under the “News” section.

## Document Management

**Status**: Official

**Official date**: 4/24/2023

**Coordinators**: JP Navarro, ACCESS Operations

**Last revised date**: 6/8/2023

**Retired date**:
