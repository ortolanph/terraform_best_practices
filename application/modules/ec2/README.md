# EC2 Module

Creates an EC2 instance.

Refer to the **Accessing the instance by SSH** topic before applying the infrastructure. 

## Accessing the instance by SSH

On the `ec2/data/keys` it must be generated a ssh key called `terraform_best_practices_rsa`.

Use the following command:

```
> ssh-keygen.exe
Generating public/private rsa key pair.
Enter file in which to save the key (C:\Users\ctw00707/.ssh/id_rsa): terraform_best_practices
Enter passphrase (empty for no passphrase): <your password>
Enter same passphrase again: <your password again, must be the same>
```

On Lunux, a last step must be done before applying:

```shell
chmod 400 terraform_best_practices
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_instance"></a> [ec2\_instance](#module\_ec2\_instance) | terraform-aws-modules/ec2-instance/aws | ~> 3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.my_access_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.my_http_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.my_ssh_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [local_file.my_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI Id create the EC2 Instance | `any` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The VPC subnets | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC id | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_dns"></a> [ec2\_dns](#output\_ec2\_dns) | n/a |

[Back to Global](../../global/README.md)