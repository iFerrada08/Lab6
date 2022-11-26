# DevSquad Accelerator: Policy as Code

### Implement Azure Policy as Code with GitHub

Reference: [Tutorial](https://learn.microsoft.com/en-us/azure/governance/policy/tutorials/policy-as-code-github)

Create service principal with a secret, follow the steps to configure Azure Service Principal with a secret.

- Define a new secret under your repository settings, Add secret menu
- Store the output of the below az cli command as the value of secret variable, for example 'AZURE_CREDENTIALS'

 ```shell
  az ad sp create-for-rbac --name "AzureArc" --role contributor \
                            --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group} \
                            --sdk-auth
                            
  # Replace {subscription-id}, {resource-group} with the subscription, resource group details
  # The command should output a JSON object similar to this:
 
  {
    "clientId": "<GUID>",
    "clientSecret": "<STRING>",
    "subscriptionId": "<GUID>",
    "tenantId": "<GUID>",
    "resourceManagerEndpointUrl": "<URL>"
    (...)
  }
  ```

Resources:
- [Overview of Azure Policy](https://learn.microsoft.com/en-us/azure/governance/policy/overview)
- [Intro to Azure Policy](https://learn.microsoft.com/en-us/training/modules/intro-to-azure-policy/)
- [Design an enterprise governance strategy](https://learn.microsoft.com/en-us/training/modules/enterprise-governance/)
- [Build a cloud governance strategy on Azure](https://learn.microsoft.com/en-us/training/modules/build-cloud-governance-strategy-azure/)
- [Design Azure Policy as Code workflows](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/policy-as-code)
