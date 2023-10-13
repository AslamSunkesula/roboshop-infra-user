module "allow_all_sg" {
    source = "../terraform-aws-securitygroup"
    project_name = var.project_name
    sg_name = "allow-all"
    sg_description = "allow-all ports from the internet"
    common_tags = var.common_tags
    vpc_id = local.vpc_id
    sg_ingress_rules = [ var.sg_ingress_rules ]

}