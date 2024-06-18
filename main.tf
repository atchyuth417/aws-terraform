#provider "aws" {
#  region = "us-east-1"
#}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
}

module "public_instances" {
  source         = "./modules/ec2_instance"
  subnet_id      = module.vpc.public_subnet_id
  instance_count = 2
  instance_type  = "t2.micro"
  ami_id         = "ami-08a0d1e16fc3f61ea" # Update with a valid AMI ID
}

module "private_instances" {
  source         = "./modules/ec2_instance"
  subnet_id      = module.vpc.private_subnet_id
  instance_count = 2
  instance_type  = "t2.micro"
  ami_id         = "ami-08a0d1e16fc3f61ea" # Update with a valid AMI ID
}
