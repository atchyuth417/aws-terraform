output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_instance_ids" {
  value = module.public_instances.instance_ids
}

output "private_instance_ids" {
  value = module.private_instances.instance_ids
}
