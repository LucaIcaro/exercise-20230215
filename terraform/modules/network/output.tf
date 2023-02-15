output "vpc_id" {
  description = "The VPC ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets_ids" {
  description = "The IDs of the Public Subnets"
  value       = module.vpc.public_subnets
}