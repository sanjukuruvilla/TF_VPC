aws_region = "your_preferred_region"
vpc_cidr_block = "cidr block for vpc"
security_group_ingress_rules = [      // default security group for both private and public subnet
  {                                  //example for http port exposing to internet
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   //expose to internet
  }
]

public_subnet_cidr_blocks = ["10.0.0.0/26", "10.0.0.64/26"]  //if you want to use multiple use it as list
private_subnet_cidr_blocks = ["10.0.0.128/26", "10.0.0.192/26"]
key_pair_name = "your_key_pair_name"
ami_id = "your_ami_id"
instance_type = "your_instance_type"
user_data = ""                      //either you can mention the bash script here or specify location of script file during the terraform apply time
                                   //example: terraform apply -var 'user_data="#!/bin/bash\necho \"Hello, World!\""' or
                                  //example: terraform apply -var-file=file.txt -var-file=userdata.sh  , here file.txt is for variables and userdata.sh is for script

