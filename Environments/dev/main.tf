module "vpc" {
  source = "../../modules/vpc"
    environment = var.environment
    project     = var.project
    cidr_block  = var.vpc_cidr_block
    availability_zones    = var.availability_zones
    public_subnet_cidrs   = var.public_subnet_cidrs
    frontend_subnet_cidrs = var.frontend_subnet_cidrs
    backend_subnet_cidrs  = var.backend_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    enable_nat_gateway    = true
    single_nat_gateway    = var.single_nat_gateway

    tags        = var.tags
}

module "security_groups" {
  source = "../../modules/security_groups"
    environment      = var.environment
    project          = var.project
    vpc_id           = module.vpc.vpc_id
    allowed_ssh_cidrs = var.allowed_ssh_cidrs
    tags             = var.tags
}