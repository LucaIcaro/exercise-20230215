# Network module for Terraform

This module creates:
 * a VPC
 * a public subnet
 * IGW and routes to the internet

## How to use the module

The module accepts several inputs, but by default it creates a VPC, a public subnet, an IGW and a route to that IGW.

Please note that the route through the IGW takes some time (30 secs to 1 minute) to create after the `apply` command has been run successfully.

Backends and providers must be defined on the project that is going to call this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4.54.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~>3.19.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | CIDRs for the Public Subnets | `list(any)` | <pre>[<br>  "10.0.1.0/24"<br>]</pre> | no |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | Name of the public subnet | `string` | `"my-public-subnet"` | no |
| <a name="input_subnet_azs"></a> [subnet\_azs](#input\_subnet\_azs) | Availability Zones for the subnets | `list(any)` | <pre>[<br>  "eu-west-1a"<br>]</pre> | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR for the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | `"my-vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_subnets_ids"></a> [public\_subnets\_ids](#output\_public\_subnets\_ids) | The IDs of the Public Subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The VPC ID of the created VPC |
<!-- END_TF_DOCS -->