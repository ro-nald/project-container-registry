
# Project Container Registry

## Setup
To setup the container registry, you will first need to setup credentials for Azure. Login with the `az login` command, and create a Service Principal. On creation of the Service Principal, a `.env` file can be created:

```
# .env file
export ARM_CLIENT_ID=<ClientID>
export ARM_CLIENT_SECRET=<ClientSecret>
export ARM_SUBSCRIPTION_ID=<SubscriptionID>
export ARM_TENANT_ID=<TenantID>
```

With this, Terraform commands can be used to provision resources in the specified Azure subscription.

## Upcoming improvements
- Retrieve secret from keyvault
- Create a UI which will create time-sensitive credentials for new projects to access container images
- Create a back-up strategy so that the Container Registry doesn't have to be running all the time, it can be provisioned from a free-tier DB service such as MongoDB or a blob storage solution.