# CF Deployment Pipeline

A pipeline for deploying Cloud Foundry

## Variables

Seed credhub with the following variables:

```yml
billing_account_id:
gcp_credentials_json:
organization_id:

domain:
folder_name:
project_id:
project_name:
region:
```

## Setting

`fly -t target set-pipeline -c pipeline.yml -p deploy-cf`
