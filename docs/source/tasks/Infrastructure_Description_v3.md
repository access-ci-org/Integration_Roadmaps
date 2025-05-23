# Infrastructure Description v3

Infrastructure Integration Roadmap Task

**Task Type(s)**: Coordination  
**Start by phase**: Planning  
**Complete by phase**: Ongoing  
**RP role(s)**: Integration coordinator

## Summary

ACCESS infrastructure that is visible to researchers/users, resource providers, developers, between ACCESS projects, or the broader community must be described. ACCESS resource providers, ACCESS projects, and other ACCESS affiliated online service providers (i.e. science gateways, etc.) enter basic information about their organization and then describe the infrastructure that they operate in the Cyberinfrastructure Description Repository (CiDeR). Audience relevant summaries of these descriptions are displayed in different ACCESS websites.

Initial setup involves the integration coordinator obtaining administrator access to CiDeR so they can authorize others in their organization to enter and maintain infrastructure descriptions. This task should take ~½ hour. Organization staff enter initial descriptions and maintain accurate infrastructure descriptions in CiDeR. This task should take ~1 hour/year per infrastructure element.

## Prerequisite tasks

None

## Support Information

```{include} support.md
```

## Detailed Instructions

For general information on [CIDeR](cider.access-ci.org) such as webpage access/authorization, webpage navigation, and viewing/editing infrastructure, follow the [CiDeR documentation](https://cider.access-ci.org/documentation).

For new Resource Providers, follow these steps:
1. [Getting Started with CIDeR](#getting-started-with-cider)
1. [Creating a CIDeR organization](#creating-a-cider-organization)
1. [Adding New Infrastructure](#adding-new-infrastructure)

For RPs that have CIDeR access on the individual (see [Getting Started with CIDeR](#getting-started-with-cider)) and organization level (see [Creating a CIDeR organization](#creating-a-cider-organization)), proceed to the [Adding new infrastructure seciton](#adding-new-infrastructure).

### Getting Started with CIDeR

Follow the [Getting Started section of the CIDeR documentation](https://cider.access-ci.org/documentation#getting-started) to obtain access/authorization to [CIDeR](cider.access-ci.org).

### Creating a CIDeR organization

RPs require a CIDeR organization (e.g. Texas Tech University) in order to define infrastructure resources.
To see organizations currently defined, see [CIDeR's organizations list](https://cider.access-ci.org/resource_providers). (ACCESS login required - see [Getting Started with CIDeR](#getting-started-with-cider) for access/authorization issues)

Submit an *Integration and Operations Request* from [*this page*](https://operations.access-ci.org/open-operations-request/) with the Title “New CIDeR Organization” and the following information:

- Organization logo URL or attached file
- Organization public URL
- Organization PI/director name
- Organization PI/director email address
- External Data Posting
  - Organization ID Type either [*GRID*](https://www.grid.ac/) or [*RINGGOLD*](https://www.ringgold.com/ringgold-identifier/)
  - Organization ID
  - City, State, and Country
- Request a new resource group for the organization
  -  Group Types: resource-catalog.access-ci.org
- The ACCESS usernames of individuals that will be CiDeR administrators for your organization. These individuals will be able to grant other individuals access to maintain infrastructure descriptions. Persons can be both CiDeR administrators and the maintainers of descriptions.

Submitted organization information will be entered by a CiDeR administrator and used to grant access to CiDeR administrators.

### Provide CiDeR access to other organization staff

After the integration coordinator has been granted CiDeR access they can grant other organization staff access to enter and maintain infrastructure descriptions:

- Select “Service Providers” or “Organizations” along the top.
- Click on your “Organization” name.
- Click on “Administrators”.
- Add additional Organization Admins who may enter and update your organization resource information.

### Adding New Infrastructure

Follow the [Adding New Infrastrucutre section of the CIDeR documentation](https://cider.access-ci.org/documentation#adding-infrastructure) with the ACCESS-specific steps mentioned below:

- Be sure to click to the Affiliations tab and add ACCESS as an affiliation
- Be sure to add an Announcement Date as soon as possible to trigger displaying infrastructure in other ACCESS interfaces
- For Compute, Cloud, and Storage type resources, enter as much information as possible in the type details tab **minimum required information**:

| Field Name                   | Applicable Resource Type | Notes                                                                      |
|------------------------------|--------------------------|----------------------------------------------------------------------------|
| Node Count                   | Compute, Cloud           | For cloud record the number of controller nodes.                           |
| CPU Core Count Per Node      | Compute, Cloud           | For heterogeneous clusters use the mean value per node                     |
| Memory Per CPU in GB         | Compute, Cloud           | For heterogeneous clusters use the mean value per node                     |
| Local Storage per Node in GB | Compute                  | For heterogeneous clusters use the mean value per node                     |
| Peak Teraflops               | Compute                  | Leave blank if unknown                                                     |
| Disk Size in TB              | Compute, Storage, Cloud  | Total amount of shared storage (network attached and parallel file-system) |

**Tips for storage resource providers:** The following topics are particularly helpful
in your storage resource description.
* Intended use - Some storage resources are intended to be used only in conjunction
  with a specific compute resource, while others are intended to be used without
  any associated computing. Your intended use statement should clearly state which
  of these is true for your resource.
* Backup policy - If your storage resource isn't backed up, it's best to note that
  in as many places as possible! This is a good place to clearly state the backup policy.
* Additional allocation requirement - If your storage resource may only be allocated
  in conjunction with another resource (compute, cloud), it's helpful to clearly state
  that requirement in the resource description.
* Variation from standard allocation rates - Most ACCESS storage resources have an
  exchange rate of one ACCESS allocation credit to one resource unit, and one resource
  unit to 1 GB of storage. If your resource has a different rate, please state that
  clearly in the resource description.

#### Identity Resource Provider Contacts

The Integration Coordinator must enter the following RP contacts in CiDeR for each defined Infrastructure:
1. Allocations process contact(s)
1. AMIE technical contact(s)
1. Cybersecurity and incident response contact(s)
1. Data and networking contact(s)
1. Integration coordinator(s)
1. Metrics and performance data contact(s)
1. Public documentation contact(s)
1. Public relations and media contact(s)
1. Researcher support and ticket handling contact(s)
1. Resource news and outages publisher(s)
1. System administrator(s)

If the RP doesn’t know who some of these contacts will be, or wishes not to identify them until relevant integration effort ramps up, please name the Integration Coordinator as the placeholder for those roles. In other words, ACCESS needs each someone to be the contact in each of the above areas, even if it’s the coordinator who will eventually hand off effort to someone else. As integration activities ramps up the Integration Coordinator can add other RP staff replacing themselves as necessary.

#### Enter Resource Conversion Factors

Skip this section if your resource is not ACCESS allocated.

The CiDeR Documentation has instructions for entering a “conversion factor”. This is the NU conversion factor of your resource, divided by 21.576. For most compute resources, you should NOT change the conversion factor that you already have listed. 

**The variable marketplace exchange rate was previously linked to the conversion factor.  The exchange rate is now managed independently in the XRAS system.  Documentation for managing exchange rates is available:  [*Variable Marketplace RP Documentation*](https://access-ci.atlassian.net/wiki/spaces/ACP/pages/1238073366/Variable+Marketplace+RP+Documentation).**



### Maintain infrastructure descriptions

Information in CiDeR must be kept up to date and reviewed for accuracy at least yearly.

<sub>
<ul class="document-meta-data">
    <li><strong>Status</strong>: Production</li>
    <li><strong>Version</strong>: v3</li>
    <li><strong>Task Expert(s)</strong>: JP Navarro, ACCESS Operations; Nathan Tolbert, ACCESS Allocations</li>
</ul>
</sub>
<br/>
<br/>
