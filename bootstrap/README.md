# Bootstrap

Creates the Bucket and DynamoDB for Terraform state and transaction management.

This is a simple version of the bootstrap configuration.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.my_stat_locks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.my_state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | The User's access key | `any` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | The User's secret key | `any` | n/a | yes |

## Outputs

No outputs.

[Back to main page](../README.md)