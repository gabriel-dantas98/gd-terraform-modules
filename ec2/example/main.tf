module "ec2_instance" {

   //source = "git::https://github.com/gabriel-dantas98/gd-terraform-modules.git//ec2"
   source             = "../"

   instance_count     = var.instance_count
   instance_name      = var.instance_name
   instance_type      = var.instance_type
   ami_id             = data.aws_ami.amazon_linux.id
   key_pair           = var.key_pair
   security_group_ids = var.security_group_ids
   subnet_id          = var.subnet_id
   instance_role      = var.instance_role
   user_data          = var.user_data
      
   ebs_volume_type           = var.ebs_volume_type
   ebs_volume_size           = var.ebs_volume_size
   ebs_delete_on_termination = var.ebs_delete_on_termination

   instance_tags = {
      "Owner" =  "gdantas",
      "Squad" = "Ghost"
   }
}