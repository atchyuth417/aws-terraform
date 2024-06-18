variable "subnet_id" {
  description = "The subnet ID where the instance will be deployed"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}
