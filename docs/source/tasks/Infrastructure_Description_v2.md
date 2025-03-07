# Infrastructure Description v2

Infrastructure Integration Roadmap Task

**Task Type(s)**: Coordination  
**Start by phase**: Integration  
**Complete by phase**: Ongoing  
**RP role(s)**: Resource or Service Integration Coordinator, Documentation and knowledge base contact(s),

## Summary

ACCESS infrastructure that is visible to researchers/users, resource providers, developers, between ACCESS projects, or the broader community must be described. ACCESS resource providers, ACCESS projects, and other ACCESS affiliated online service providers (i.e. science gateways, etc.) enter basic information about their organization and then describe the infrastructure that they operate in the Cyberinfrastructure Description Repository (CiDeR). Audience relevant summaries of these descriptions are displayed in different ACCESS websites.

Initial setup involves the integration coordinator obtaining administrator access to CiDeR so they can authorize others in their organization to enter and maintain infrastructure descriptions. This task should take ~½ hour. Organization staff enter initial descriptions and maintain accurate infrastructure descriptions in CiDeR. This task should take ~1 hour/year per infrastructure element.

## Prerequisite tasks

None

## Support Information

For assistance with this task see the *Support Information* section in your *Integration Roadmap Description*.

## Detailed Instructions

Organization staff access CiDeR at [*https://cider.access-ci.org/login*](https://cider.access-ci.org/login).

### Initial CiDeR Setup

If your organization already has CiDeR access, skip to step C.

Submit an *Integration and Operations Request* from [*this page*](https://operations.access-ci.org/open-operations-request/) with the Title “New CiDeR Organization” and the following information:

- Organization logo URL or attached file

- Organization public URL

- Organization PI/director name

- Organization PI/director email address

- External Data Posting

  - Organization ID Type either [*GRID*](https://www.grid.ac/) or [*RINGGOLD*](https://www.ringgold.com/ringgold-identifier/)

  - Organization ID

  - City, State, and Country

- The ACCESS usernames of individuals that will be CiDeR administrators for your organization. These individuals will be able to grant other individuals access to maintain infrastructure descriptions. Persons can be both CiDeR administrators and the maintainers of descriptions.

Submitted organization information will be entered by a CiDeR administrator in a form as shown below and used to grant access to CiDeR administrators.

![](media/Infrastructure_Description_v2/media/image1.png)

### Provide CiDeR access to other organization staff

After the integration coordinator has been granted CiDeR access they can grant other organization staff access to enter and maintain infrastructure descriptions:

- Select “Service Providers” or “Organizations” along the top.

- Click on your “Organization” name.

- Click on “Administrators”.

- Add additional Organization Admins who may enter and update your organization resource information.

### Enter Infrastructure Descriptions

Organization staff enter new infrastructure descriptions as detailed in the Quick Start Guide and User Guide:

[*https://cider.access-ci.org/documentation*](https://cider.access-ci.org/documentation)

Steps:

- Select “Infrastructure” along the top.

- Click on “Add new Infrastructure” to add a new infrastructure, click on a name to view an existing infrastructure, or click on the pencil icon to edit an existing infrastructure.

- Enter as much information as possible in this first form
  * Resource Type can not be changed once the infrastructure is created.  Choose the most appropriate type that corresponds to the main purpose of the infrastructure.
    * Compute encompasses infrastructure primarily used for computing, including running jobs on CPU, GPU, or other types of accelerators.  
  * Be sure to click to the Affiliations tab and add ACCESS as an affiliation.

- Click the "Save Changes" button to create the infrastructure.

- After saving you will be redirected to the infrastructure edit page where you can add more information such as features, contact information, and production dates.

- Select Resource Features as follows:

| Applicable Resource Type        | Features                                                                                                                                                                                                                                                                           |
|---------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Compute, Cloud, Storage         | Select from the following features:<br>- Sensitive data support<br>- Community software areas for users<br>- Visualization support<br>- Advanced reservation support<br>- Discounted preemptible queue support<br>- CONECTnet attached<br>- Internal resource not visible to users |
| Compute, Cloud, Storage         | If your resource supports science gateways select features starting with “Science Gateway *”.                                                                                                                                                                                      |
| Online Services                 | Select from the following features:<br>- ACCESS Online Services for users<br>- ACCESS Online Services for resource providers<br>- ACCESS Online Services for developers<br>- ACCESS Online Services for ACCESS projects                                                            |
| Science Gateway Online Services | This feature designates a registered Online Service as a science gateway:<br>- ACCESS Integrated Science Gateways                                                                                                                                                                  |

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

### Enter Resource Conversion Factors

Skip this section if your resource is not ACCESS allocated.

The CiDeR Documentation has instructions for entering a “conversion factor”. This is the NU conversion factor of your resource, divided by 21.576. **For most compute resources, you should NOT change the conversion factor that you already have listed.  

** The variable marketplace exchange rate was previously linked to the conversion factor.  The exchange rate is now managed independently in the XRAS system.  Documentation for managing exchange rates is available:  [*Variable Marketplace RP Documentation*](https://access-ci.atlassian.net/wiki/spaces/ACP/pages/1238073366/Variable+Marketplace+RP+Documentation).

![](media/Infrastructure_Description_v2/media/image2.png)

### Maintain infrastructure descriptions

Information in CiDeR must be kept up to date and reviewed for accuracy at least yearly.

<sub>
<ul class="document-meta-data">
    <li><strong>Status</strong>: Production</li>
    <li><strong>Version</strong>: v1</li>
    <li><strong>Task Expert(s)</strong>: JP Navarro, ACCESS Operations; Nathan Tolbert, ACCESS Allocations</li>
</ul>
</sub>
<br/>
<br/>
