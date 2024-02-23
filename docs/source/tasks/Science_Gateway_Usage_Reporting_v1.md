# Science Gateway Usage Reporting

Infrastructure Integration Roadmap Task

**Task Type(s)**: Coordination, Support  
**Start by phase**: Integration  
**Complete by phase**: Operation  
**Operator role(s)**: Gateway administrator

## Summary

Science gateways that execute jobs on ACCESS resource provider resources report usage through an ACCESS-provided REST service. Usage statistics are available through XDMoD.

## Prerequisite tasks

1.  The gateway must have an allocation and a community account. See [*Request Science Gateway Community Accounts v1*](Request_Science_Gateway_Community_Accounts_v1.md).

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

Science gateways that submit jobs to high performance computing and other resources must provide additional information, such as the user name, to supplement usage information associated with community accounts that is gathered automatically by the XDMoD system. This allows resource providers and access to more accurately track and report the number of users of their systems.

ACCESS provides a simple REST API for this reporting. Science gateways can also use other API methods to programmatically access usage information for individual users of the community account.

The science gateway provider should follow the instructions at [*https://allocations-api.access-ci.org/acdb/*](https://allocations-api.access-ci.org/acdb/).

After integration, the gateway provider should verify that usage is being correctly reported in the ACCESS XDMoD system, [*https://xdmod.access-ci.org/*](https://xdmod.access-ci.org/). The gateway provider can also use REST API calls to verify information reporting; see [*https://allocations-api.access-ci.org/acdb/*](https://allocations-api.access-ci.org/acdb/).


<sub>
<ul class="document-meta-data">
    <li><strong>Status</strong> : Production</li>
    <li><strong>Version</strong> : v1</li>
    <li><strong>Task Expert(s)</strong> : Dinuka De Silva, Rob Quick</li>
</ul>
</sub>
<br/>
<br/>

