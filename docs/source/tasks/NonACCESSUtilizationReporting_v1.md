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

An example Bash script for sending `sacct` logs is
[here](media/NonACCESSUtilizationReporting_v1/media/post-sacct-to-ccr.sh). See
the comment at the top of the script for information on usage.

### Globus Transfer

To setup Globus Transfer, please provide the name or names of the globus accounts that will be used for data transfer. ACCESS Metrics will create a globus share and give write permissions to the user accounts provided by the RP. Instructions for setting up the periodic transfers using the globus tools are either [*Globus timer cli tool*](https://pypi.org/project/globus-timer-cli/) or the web-based [*Globus Timers*](https://www.globus.org/blog/scheduled-and-recurring-transfers-now-available-globus-web-app).

### Required Log files

|  Log Type    |  Description  | Filename | Update Frequency |
| ------------ | ------------- | -------- | ---------------- |
| Resource Manager Log Files | Daily dumps of the resource manager log files. Use the format described in the [Open XDMoD shredder documentation](https://open.xdmod.org/shredder.html). | Use the filename direct from the resource manager logs, or if using slurm's `sacct` use `slurm.log` | Daily |
| Name mapping               | Mapping between the username on the resource and a persons full name. Use the format described in the [Open XDMoD Names documentation](https://open.xdmod.org/user-names.html). For Regional Computing resources that support users from multiple different institutions then the User's instittion should also be included in the file contents as an additional column after the user's last name. | `names.csv` | Upload new copy of the file when new users are added to the resource. |
| Resource Specifications    | Information about the number of compute devices (nodes, cores, GPUs) on the resource. The file format supports tracking resource changes over time. Use the format described in the [Open XDMoD resource specs](https://open.xdmod.org/10.5/configuration.html#resource_specsjson) | `resource_specs.json` | Whenever the resource size changes |

<sub>
<ul class="document-meta-data">
    <li><strong>Status</strong> : Production</li>
    <li><strong>Version</strong> : v1</li>
    <li><strong>Task Expert(s)</strong> : Joseph White, Aaron Weeden, and Conner Saeli, ACCESS Metrics</li>
</ul>
</sub>
<br/>
<br/>
