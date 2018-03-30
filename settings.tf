variable "instance_count" {
  type = "map"

  default {
    appko = 1
  }
  description = "The number of instances created"
}


variable "instance_type" {
  type = "map"

  default {
    appko = "t2.micro"
  }
  description = "Types of instances"
}

variable "ami" {
  default = "ami-1853ac65"
  description = "AMI images"
}


variable "key_name" {
  default = "andreydevops_pair1"
  description = "Key pair name"
}

variable "vpc" {
  default = "vpc-710e810a"
  description = "VPC ID"
}

variable "azs" {
 type = "map"

 default {
  "1" = "us-east-1d"
 }
}


variable "subnets" {
  type = "map"

  default {
   "1" = "subnet-908fbfcd"
  }


  description = "Subnets for creating instances"
}
