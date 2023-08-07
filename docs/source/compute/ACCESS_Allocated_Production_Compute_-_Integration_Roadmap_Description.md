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

### Planning phase

1. [ ] Coordination: [ACCESS Allocated Resource Integration Coordination v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/ACCESS_Allocated_Resource_Integration_Coordination_v1.html) (NEW)

2. [ ] Coordination: [Infrastructure Description v2](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Infrastructure_Description_v2.html)

3. [ ] Technology: [Cybersecurity Requirements for RPs v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Cybersecurity_Requirements_for_RPs_v1.html)

4. [ ] Technology: [Data and Network Integration v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Data_and_Network_Integration.html)

### Integration phase

5. [ ] Coordination: [ACCESS Allocation Policies v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/ACCESS_Allocation_Policies_v1.html)

6. [ ] Coordination: [Knowledge Base v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Knowledge_Base_v1.html)

7. [ ] Coordination: [Resource Provider Forum Participation v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Resource_Provider_Forum_Participation_v1.html)

8. [ ] Coordination: [Cybersecurity Governance Council Participation v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Cybersecurity_Governance_Council_Participation_v1.html)

9. [ ] Technology: [Resource Metrics Data Availability Assessment v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Resource_Metrics_Data_Availability_Assessment_v1.html)

10. [ ] (Optional) Technology: [ACCESS DNS Entries v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/ACCESS_DNS_Records_v1.html) (NEW)

11. [ ] (Optional) Technology: [Local Service ACCESS IAM Integration v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Local_Services_ACCESS_IAM_Integration_v1.html) (NEW)

12. [ ] (Optional) Technology: [ACCESS OnDemand Portal Integration v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/ACCESS_OnDemand_Portal_Integration_v1.html) (NEW)

### Operations phase

13. [ ] Technology: [Deploy Globus Endpoint v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Deploy_Globus_Endpoint_v1.html)

14. [ ] Technology: [Publish Dynamic Resource Information v2](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Publish_Dynamic_Resource_Information_v2.html)

15. [ ] Support: [Incident Response and Coordination v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Incident_Response_and_Coordination_v1.html)

16. [ ] Support: [Ticket Handling v2](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Ticket_Handling_v2.html)

17. [ ] Support: [Operational Status Communications v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Operational_Status_Communications_v1.html)

18. [ ] Support: [AMIE and Usage Reporting v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/AMIE_and_Usage_Reporting_v1.html)

19. [ ] Technology: [Performance Data reporting v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Performance_Data_Reporting_v1.html)

20. [ ] (Optional) Technology: [Request RP or Site Staff Allocation v1](https://readthedocs.access-ci.org/projects/integration-roadmaps/en/latest/tasks/Request_RP_or_Site_Staff_Allocation_v1.html)

## Document Management

**Status**: Official

**Official date**: 4/24/2023

**Coordinators**: Jess Haney, ACCESS Operations

**Last revised date**: 08/07/2023

**Retired date**:
