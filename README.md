# CF Deployment Pipeline

A pipeline for deploying Cloud Foundry to GCP

**Note** This is intended to be a spike/PoC and has not been tested at all.

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

## DNS

After the pipeline runs you will need to connect your domain to whatever DNS service manages it. The pipeline will create a hosted zone in the newly created GCP project. Grab the NS servers from this hosted zone and create an NS record with them in the parent domain's DNS.
