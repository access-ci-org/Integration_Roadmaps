# ACCESS OnDemand Portal Integration V1

Infrastructure Integration Roadmap Task

**Task Type(s)**: Technology  
**Start by phase**: Integration  
**Complete by phas**e: Ongoing  
**RP role(s)**: System administrator(s)

## Summary

This task provides Resource Providers instructions on how to deploy an ACCESS integrated OnDemand portal. This task will generally be performed by RP system administrators.

## Prerequisite tasks

None

## Support Information

For assistance with this task see the *Support Information* section in the *Integration Roadmap Description*.

## Detailed Instructions

### Required

1. Install Open OnDemand. Refer to the
  [open ondemand installation](https://osc.github.io/ood-documentation/latest/installation.html) documentation.

2. Register / document ACCESS OnDemand portal availability

    - In the Support Portal

        - Check to validate that your OnDemand instance is listed on the OnDemand Support Page [*https://support.access-ci.org/ondemand*](https://support.access-ci.org/ondemand)

        - If it is not, then click the link to [*Submit a Ticket*](https://support.access-ci.org/open-a-ticket?resource=issue_not_resource_related&is_your_issue_related_to_allocations_=No&category=ACCESS-Support-OnDemand&subject=List%20my%20OnDemand%20installation&problem_description=Please%20list%20my%20OnDemand%20Installation%20on%20the%20ACCESS%20Support%20website.&tag2=249). Please include the following information.

            - Institution Name

            - OnDemand Resource Name

            - Your Logo, with a width of about 300 pixels and the height relative to the width.

            - Your OnDemand Portal URL.

3. Install and set up the `xdmod-ondemand-export` Python script (following its [README](https://github.com/ubccr/xdmod-ondemand/tree/main/tools/xdmod-ondemand-export#xdmod-ondemand-export)) for sending OnDemand log data via HTTPS POST to the ACCESS Metrics team for inclusion in [ACCESS XDMoD](https://xdmod.access-ci.org/).

### Optional

1. Integrate with ACCESS IAM Authentication.

    Open OnDemand has documenatation for [integrating OnDemand with ACCESS authentication](https://osc.github.io/ood-documentation/latest/authentication/nsf-access.html).

2. Add the ACCESS Menu

    You can optionally add a menu to Open OnDemand's navigation bar for links back to
    ACCESS resources.

    OSC provides a [ACCESS Menu](https://github.com/OSC/bc_access_menu) package with documentation
    on how to install additional packages or configure OnDemand to show this new ACCESS menu.

<sub>
<ul class="document-meta-data">
    <li><strong>Status</strong> : Production</li>
    <li><strong>Version</strong> : v1</li>
    <li><strong>Task Expert(s)</strong> : Jeff Ohrstrom, ACCESS Support</li>
</ul>
</sub>
<br/>
<br/>
