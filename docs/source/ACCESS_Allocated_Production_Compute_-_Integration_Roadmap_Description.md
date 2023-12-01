# ACCESS Allocated Production Compute

> Infrastructure Integration Roadmap Description

## Infrastructure Type(s)

This roadmap integrates a high-performance computing “HPC” cluster ([*https://en.wikipedia.org/wiki/High-performance_computing*](https://en.wikipedia.org/wiki/High-performance_computing)). Researchers typically use HPC clusters by logging in to front-end nodes where they install application software and run jobs under a batch scheduler. Science gateways, workflow engines and other software tools may perform these actions on the researchers' behalf. Jobs may run entirely in the background reading input data and generating output data, may use interactive or steered input, and may generate live or streamed visual output.

## Summary

The ACCESS program ([*https://access-ci.org*](https://access-ci.org)) enables researchers and educators to gain access to advanced computing, visualization, and data resources to accomplish their research or classroom objectives using an allocations process described at [*https://allocations.access-ci.org/*](https://allocations.access-ci.org/).

This roadmap details the tasks that a resource provider organization must perform to make a specific HPC cluster ACCESS allocated in production. These tasks cover all aspects of integration and operations in production, including coordination, technical integration tasks, and ongoing support activities.

## Operator Information

Operators planning to integrate an HPC resource into ACCESS with this roadmap should contact ACCESS Operations to start the integration process (see details in the first task below). ACCESS Operations will assign a Concierge Integration Expert to provide personalized hands-on assistance with the integration process, schedule an online meeting between resource provider staff and ACCESS staff to launch the integration process, and provide instructions on how to track integration progress.

Operators must perform the Required Tasks below and may perform the Optional Tasks below.

See related [*Roadmap Task Timeline*](https://docs.google.com/presentation/d/1Vtt-Rvwa2ZVRp61A9g80MyisZ748lK1o_46Xt7-6Fq0/).

This roadmap refactors and replaces the [*ACCESS Allocated Production Compute/Storage/Cloud v1*](https://docs.google.com/document/d/1VUTa5DOz27B6wobZZwh6gh6dcXWD30rpYovoLZ1nwqk) roadmap. Operators that completed the older roadmap only need to complete corresponding tasks that were not completed in the prior roadmap.

Please track RP integration progress in [*this spreadsheet*](https://docs.google.com/spreadsheets/d/1ejgGUU-IVLEhTIXX3pmCNBSJ2e0yXwXxPpgZ2RHwM4Q/).

## Support Information

**Submit a Request**: Resource providers needing assistance with integration tasks can submit an *ACCESS Integration and Operation Support Request* using instructions on [*this page*](https://operations.access-ci.org/help). Pick an “*ACCESS Operations Issue Type*” that best matches your request, or the catch-all issue type “*ACCESS-wide: Provider Integration - Infrastructure Integration and Roadmaps*“.

**Slack Discussion**: ACCESS has a Slack channel for infrastructure operators and ACCESS to discuss integration topics. For access submit a request to be invited to the ***RP-ACCESS \#integration-roadmaps*** Slack channel.

**By Weekly Meetings**: ACCESS holds a Zoom meeting every second Friday from 11:00 AM to Noon Central for infrastructure operators and ACCESS to discuss integration topics. To obtain Zoom coordinates submit a request for the **RP and ACCESS Roadmaps** Zoom meeting coordinates.

**Integration Consultants**: ACCESS allocated resource providers and some other types of infrastructure operators have a *Concierge Integration Expert* consultant available for one-on-one integration support.

**Documentation**:

- [*Introduction to Roadmaps*](https://docs.google.com/presentation/d/1OjeT6r01mdOIa4pq1VE0L5ocRPfqdXFp9QsADjdqrjE/) slides

- [*ACCESS RP Roadmaps FAQ*](https://docs.google.com/document/d/1VwYROB7sh4X_Tqvi_4XIkYD-jffBS4UykS6gEJesuQE/)

## Phases

### Planning phase

```{toctree}
:maxdepth: 1

1. Coordination: ACCESS Allocated Resource Integration Coordination <tasks/ACCESS_Allocated_Resource_Integration_Coordination_v1.md>
2. Coordination: Infrastructure Description <tasks/Infrastructure_Description_v2.md>
3. Technology: Cybersecurity Requirements for RPs <tasks/Cybersecurity_Requirements_for_RPs_v1.md>
4. Technology: Data and Network Integration <tasks/Data_and_Network_Integration.md>
```

### Integration phase

```{toctree}
:maxdepth: 1

5. Coordination: ACCESS Allocation Policies <tasks/ACCESS_Allocation_Policies_v1.md>
6. Coordination: Knowledge Base <tasks/Knowledge_Base_v1.md>
7. Coordination: RP Forum Participation <tasks/Resource_Provider_Forum_Participation_v1.md>
8. Coordination: Cybersecurity Governance Council Participation <tasks/Cybersecurity_Governance_Council_Participation_v1.md>
9. Technology: Resource Metrics Data Availability Assessment <tasks/Resource_Metrics_Data_Availability_Assessment_v1.md>
10. (Optional) Technology: ACCESS DNS Entries <tasks/ACCESS_DNS_Records_v1.md>
11. (Optional) Technology: Local Service ACCESS IAM Integration <tasks/Local_Services_ACCESS_IAM_Integration_v1.md>
12. (Optional) Technology: ACCESS OnDemand Portal Integration <tasks/ACCESS_OnDemand_Portal_Integration_v1.md>
```

### Operations phase

```{toctree}
:maxdepth: 1

13. Technology: Deploy Globus Endpoint <tasks/Deploy_Globus_Endpoint_v1.md>
14. Technology: Publish Dynamic Resource Information <tasks/Publish_Dynamic_Resource_Information_v2.md>
15. Support: Incident Response and Coordination <tasks/Incident_Response_and_Coordination_v1.md>
16. Support: Ticket Handling <tasks/Ticket_Handling_v2.md>
17. Support: Operational Status Communications <tasks/Operational_Status_Communications_v1.md>
18. (Optional) Support: Request RP or Site Staff Allocation <tasks/Request_RP_or_Site_Staff_Allocation_v1.md>
19. Technology: AMIE and Usage Reporting <tasks/AMIE_and_Usage_Reporting_v1.md>
20. Technology: Performance Data reporting <tasks/Performance_Data_Reporting_v1.md>
```

## Document Management

**Status**: Official

**Official date**: 04/24/2023

**Coordinators**: Jess Haney, ACCESS Operations

**Last revised date**: 12/01/2023

**Retired date**:
