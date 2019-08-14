module "main_vpc" {

   //source = "git::https://github.com/gabriel-dantas98/gd-terraform-modules.git//vpc"
  source                = "../"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr 

  public_subnet_cidrs   = var.public_subnet_cidrs 
  private_subnet_cidrs  = var.private_subnet_cidrs 
  database_subnet_cidrs = var.database_subnet_cidrs 

  availability_zones = data.aws_availability_zones.available.names
}
