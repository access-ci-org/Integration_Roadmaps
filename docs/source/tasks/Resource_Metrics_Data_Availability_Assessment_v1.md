# Resource Metrics Data Availability Assessment v1

Infrastructure Integration Roadmap Task

**Task Type(s)**: Integration  
**Start by phase**: Planning  
**Complete by phase**: Integration  
**RP role(s)**: Metrics and performance data contact(s), System administrator(s)

## Summary

ACCESS Metrics provides [*ACCESS XDMoD*](https://xdmod.access-ci.org) and various data reporting and analysis services. XDMoD provides reporting on a wide range of CI metrics. This includes CI efficiency reporting that is available to end users, PIs and RP staff. The main data source for this is low-level performance data collected from each CI resource.

Resource Providers do not need to install or maintain XDMoD. ACCESS Metrics provides the service that processes the low-level performance data, correlates it with other CI metrics, analyzes it and stores in ACCESS XDMoD. For traditional HPC resources, performance data collection is typically achieved by running monitoring software on the compute nodes. Examples of such software include [*tacc_stats*](https://github.com/TACC/tacc_stats), [*Performance Co-Pilot*](https://pcp.io/) [*Prometheus*](https://prometheus.io/) or [*Ganglia*](http://ganglia.sourceforge.net/) to name a few. Performance data can also be obtained from some resource managers (such as slurm) with the appropriate configuration.

The choice of performance data collection system depends on the resource architecture and operational constraints. ACCESS Metrics can provide guidance and recommendations based on our experience.

## Prerequisite tasks

None

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

If the CI resource is already collecting performance data (or data collection is already part of the design plan) then the details of what data are collected should be provided to the ACCESS Metrics team via the Support Contact.

If the CI resource is not collecting performance data then this should be reported to the ACCESS Metrics team via the Support Contact and we will start the discussion about what are the appropriate performance metrics to collect and the most efficient mechanism used to collect this. For traditional HPC resources, performance data collection is typically achieved by running monitoring software on the compute nodes. Examples of such software include [*tacc_stats*](https://github.com/TACC/tacc_stats), [*Performance Co-Pilot*](https://pcp.io/) [*Prometheus*](https://prometheus.io/) or [*Ganglia*](http://ganglia.sourceforge.net/). ACCESS Metrics can provide guidance and recommendations for the most appropriate tool for the task. ACCESS Metrics team members maintain the [*tacc_stats*](https://github.com/TACC/tacc_stats) software and can provide expert assistance with integration. ACCESS Metrics supports [*Performance Co-Pilot*](https://pcp.io/) and [*Prometheus*](https://prometheus.io/) for Open XDMoD and can also provide assistance with install and configuration.

## Document Management

**Status**: {Draft, Official, Retired}

**Official date**: 4/24/2023 \<mm/dd/yyyy\>

**Coordinators**: Joseph White, ACCESS Metrics

**Last revised date**: 2023-02-01

**Retired date**: \<mm/dd/yyyy\> or blank
