**Ticket Type:** Task  
**Title:** Create two repositories and a new branch  
**Project:** Version Control System Deployment  
**Assignee:** You  
**Reporter:** Derek Morgan  
**Priority:** High  
**Labels:** Terraform, GitHub  
**Epic Link:** GitHub Expansion  
**Sprint:** Sprint 01/Dependencies

**Description:**

The development team needs repositories deployed for their latest application. They've chosen Terraform in order to scale their application and environments as needed with a single-source-of-truth. They need a backend repository and a frontend repository. Each repository also needs a branch called “development.” Ensure references to other resources are not hardcoded.

Due to some automations that are listening for these repositories to be created, the backend repository needs to be completely created before the frontend repository creation should begin. You will need to create an explicit dependency to ensure this happens properly. 

**Implementation Notes:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!

> **Note:** If you need to authenticate to GitHub to deploy the repository, you can run this command from your Codespace:

<!-- font-size: 16px -->
```bash
unset GITHUB_TOKEN && gh auth login -h github.com -p https -s delete_repo,codespace -w
```

(If the link does not open, copy and paste it into another tab.)

- <a href="https://registry.terraform.io/providers/integrations/github/latest/docs" target="_blank">GitHub Provider Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/tutorials/configuration-language/dependencies" target="_blank">Resource Dependencies Tutorial</a>
