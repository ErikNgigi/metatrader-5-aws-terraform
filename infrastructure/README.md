<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_instances"></a> [aws\_instances](#module\_aws\_instances) | ./modules/instances | n/a |
| <a name="module_aws_security"></a> [aws\_security](#module\_aws\_security) | ./modules/security | n/a |
| <a name="module_aws_vpc"></a> [aws\_vpc](#module\_aws\_vpc) | ./modules/network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | id value of the amazon machine image for the ec2 | `string` | n/a | yes |
| <a name="input_az-1"></a> [az-1](#input\_az-1) | 1st availability zone to distribute across subnets | `string` | n/a | yes |
| <a name="input_az-2"></a> [az-2](#input\_az-2) | 1st availability zone to distribute across subnets | `string` | n/a | yes |
| <a name="input_az-3"></a> [az-3](#input\_az-3) | 1st availability zone to distribute across subnets | `string` | n/a | yes |
| <a name="input_instance"></a> [instance](#input\_instance) | instance family applied to the ec2 instance | `string` | n/a | yes |
| <a name="input_public_subnet_cidr_1"></a> [public\_subnet\_cidr\_1](#input\_public\_subnet\_cidr\_1) | The public CIDR block for the first subnet | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block for the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_metatrader_public_address"></a> [metatrader\_public\_address](#output\_metatrader\_public\_address) | exported output value of the ec2 instance public ipv4 address |
| <a name="output_metatrader_public_dns"></a> [metatrader\_public\_dns](#output\_metatrader\_public\_dns) | exported output value of the ec2 instance public ipv4 dns |
<!-- END_TF_DOCS -->