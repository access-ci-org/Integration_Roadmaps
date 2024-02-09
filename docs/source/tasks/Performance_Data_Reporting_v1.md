# Performance Data Reporting v1

Infrastructure Integration Roadmap Task

**Task Type(s)**: Technology  
**Start by phase**: Integration  
**Complete by phase**: Operations  
**RP role(s)**: Metrics and performance data contact(s), System administrator(s)

## Summary

ACCESS Metrics provides [*ACCESS XDMoD*](https://xdmod.access-ci.org) and various data reporting and analysis services. XDMoD provides reporting on a wide range of CI metrics. This includes CI efficiency reporting that is available to end users, PIs and RP staff.

The main data source for the efficiency reporting is low-level performance data collected from each CI resource. CI resource providers must periodically transfer a copy of the low-level performance data to ACCESS Metrics so that it can be processed and displayed in XDMoD.

This task involves setting up the data transfer of performance data.

## Prerequisite tasks

1.  [*Resource Metrics Data Availability Assessment v1*](Resource_Metrics_Data_Availability_Assessment_v1.md)

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

The low-level performance data files must be periodically sent to ACCESS Metrics. The recommended configuration is to use daily increments data transfers. ACCESS Metrics support three types of data transfer design. The choice of data transfer mechanism depends on the RP preferences:

1.  Globus Transfer with scheduled transfers

2.  Data transfer over ssh push from RP to ACCESS Metrics data transfer node (dtn)

3.  Data transfer over ssh pull from RP with login via the ACCESS Metrics Gateway account (Community User xdtas)

Our preferred mechanism is to use Globus Transfer with scheduled and regularly repeating transfers for the data exchange. To setup Globus Transfer, please provide the name or names of the globus accounts that will be used for data transfer. ACCESS Metrics will create a globus share and give write permissions to the user accounts provided by the RP. Instructions for setting up the periodic transfers using the globus tools are either [*Globus timer cli tool*](https://pypi.org/project/globus-timer-cli/) or the web-based [*Globus Timers*](https://www.globus.org/blog/scheduled-and-recurring-transfers-now-available-globus-web-app).

If option (2) is chosen then the RP should provide an ssh public key and a preferred username that will be used for the data transfers. ACCESS Metrics will provide the name of the data transfer node (dtn). The RP should then use a cronjob (or similar) to transfer the files each day.

Option (3) can only be used if the resource supports ACCESS community accounts and the “Community User xdtas” is authorized. In this case the xdtas account must have read permissions on the low-level performance data files. ACCESS Metrics will manage the periodic transfers.

## Document Management

**Status**: Official

**Official date**: 4/24/2023

**Coordinators**: Joseph White, ACCESS Metrics

**Last revised date**: 2023-02-01

**Retired date**:
