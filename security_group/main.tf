resource "aws_security_group" "security_group" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    
    iterator = port # optional
    for_each = var.ingress_ports # Ex: map(string) -> "8080" = "0.0.0.0/0"

    content {
      from_port   = port.key
      to_port     = port.key
      protocol    = var.protocol
      cidr_blocks = list(port.value)
    }

  }

  # NOTE on Egress rules
  # By default, AWS creates an ALLOW ALL egress rule when creating a new Security Group inside of a VPC.
  # When creating a new Security Group inside a VPC, Terraform will remove this default rule, 
  # and require you specifically re-create it if you desire that rule. 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}
