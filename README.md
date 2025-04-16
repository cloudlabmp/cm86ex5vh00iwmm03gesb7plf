**Ticket Type:** Task  
**Title:** Create two VPCs and development subnets  
**Project:** Cloud Network Infrastructure Deployment  
**Assignee:** You  
**Reporter:** Derek Morgan  
**Priority:** High  
**Labels:** Terraform, AWS  
**Epic Link:** AWS VPC Expansion  
**Sprint:** Sprint 01/Dependencies

**Description:**

The cloud infrastructure team needs to set up networking for a new microservices application. They're using Terraform to maintain infrastructure as code and ensure consistent deployments across environments. Your task is to create two AWS VPCs - one for backend services and one for frontend services. Each VPC should have a subnet named "development" for initial testing.

The backend services must be fully operational before frontend deployment begins, as the frontend depends on backend APIs. To enforce this order, you'll need to implement an explicit dependency between the VPCs. Make sure to use resource references rather than hardcoded values to maintain flexibility as the infrastructure evolves. 

**Implementation Notes:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!

> **Note:** This lab uses AWS provider with default credentials. If you need to configure AWS credentials, you can use the AWS CLI:

<!-- font-size: 16px -->
```bash
aws configure
```

(If you're using a classroom environment, credentials may already be configured for you.)

- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc" target="_blank">AWS VPC Resource Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/tutorials/configuration-language/dependencies" target="_blank">Resource Dependencies Tutorial</a>
