variable "aws_region" {

  type = string

  description = "AWS Region"

  default = "us-east-1"

}

variable "aws_profile" {

  type = string

  description = "AWS Profile"

  default = "default"

}

variable "instance_ami" {

  type = string

  description = "AWS Instance AMI"

  default = "ami-06878d265978313ca"

}


variable "instance_type" {

  type = string

  description = "AWS Instance Type"

  default = "t2.micro"

}

variable "instance_tags" {

  type = map(string)

  description = "AWS Instance Tags"

  default = {

    Name = "Ubuntu"

    Project = "Curso AWS com Terraform"

  }
}
