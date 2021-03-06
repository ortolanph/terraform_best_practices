## Global

Creates the infrastructure. 

Be sure that you are working with the correct workspace before building the infrastructure.

Use the commands:

| Command | To Do... |
| ------- | -------- |
| `terraform workspace new <region>_<stage>` | creates and selects a new workspace |
| `terraform workspace seelct <region>_<stage>` | selects a new workspace |

## Modules

There are two developed modules for this infrastructure:

1. [VPC](../modules/vpc/README.md)
1. [EC2](../modules/ec2/README.md)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_my_ec2"></a> [my\_ec2](#module\_my\_ec2) | ../modules/ec2 | n/a |
| <a name="module_my_vpc"></a> [my\_vpc](#module\_my\_vpc) | ../modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | The User's access key | `any` | n/a | yes |
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI Id for the project | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region | `any` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | The User's secret key | `any` | n/a | yes |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | The workspace name | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_dns"></a> [ec2\_dns](#output\_ec2\_dns) | n/a |


[Back to main page](../../README.md)