module "vpc"{
    #source = "../terraform-aws-vpc"
    # "git::<giturl>?ref=main"

    source = "git::https://github.com/vasavithanniru/terraform-aws-vpc.git?ref=main"
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
     is_peering_required = var.is_peering_required
}