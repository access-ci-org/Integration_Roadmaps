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

All staff responsible for posting infrastructure news must first login to the ACCESS Operations portal (https://operations.access-ci.org/) using the ACCESS CI identity provider or any other linked identity. This will automatically create their Operations Portal account.

Next, the Resource Integration Coordinator must submit the names of staff responsible for posting infrastructure news. Staff that logged in per the previous paragraph will be granted Infrastructure News Editor permissions. Submit names by opening an ACCESS ticket using the [*Support Portal ticket form*](https://support.access-ci.org/open-a-ticket). Please use the “Not related to a resource” selector (since your resource may not be listed in the selector yet), select “No” for allocations related, the “Operations Services” category and enter into the Synopsis “ACCESS Operations Infrastructure News Editor access”. ACCESS Operations will grant your staff access to the news publishing function and reply letting you know.

### Recurring Activity - Status Communications

Authorized staff can:

- [*Post new Infrastructure News*](https://operations.access-ci.org/node/add/infrastructure_news)

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

**Official date**: 4/24/2023 2/15/2023

**Coordinators**: JP Navarro, ACCESS Operations

**Last revised date**: 2/15/2023

**Retired date**:
