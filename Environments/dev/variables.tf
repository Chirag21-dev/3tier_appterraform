variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name"
  type        = string
  default     = "goal-tracker"
}

# Network
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "frontend_subnet_cidrs" {
  description = "CIDR blocks for frontend subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "backend_subnet_cidrs" {
  description = "CIDR blocks for backend subnets"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "database_subnet_cidrs" {
  description = "CIDR blocks for database subnets"
  type        = list(string)
  default     = ["10.0.31.0/24", "10.0.32.0/24"]
}

variable "single_nat_gateway" {
  description = "Use single NAT Gateway to save costs"
  type        = bool
  default     = true
}

# SSH
variable "ssh_key_name" {
  description = "SSH key pair name for EC2 instances"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH to bastion (your IP)"
  type        = string
  default     = "0.0.0.0/0"
}

# Bastion
variable "bastion_instance_type" {
  description = "Bastion instance type"
  type        = string
  default     = "t2.micro"
}

# Frontend ASG
variable "frontend_instance_type" {
  description = "Frontend instance type"
  type        = string
  default     = "t3.micro"
}

# Backend ASG
variable "backend_instance_type" {                                                      
    description = "Backend instance type"
    type        = string
    default     = "t3.micro"
    }


variable "database_instance_type" {
  description = "Database instance type"
  type        = string
  default     = "db.t3.micro"
}

# Tags
variable "tags" {                       
    description = "Common tags to apply to all resources"
    type        = map(string)
    default     = {
     Environment = "dev"
    Project     = "goal-tracker"
    ManagedBy   = "terraform"
    }
    }

    