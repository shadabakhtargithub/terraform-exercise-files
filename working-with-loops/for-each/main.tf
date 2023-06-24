variable "regions" {  

  type = list(string)  

  default = ["ap-south-1a", "ap-south-1b"]  
} 

resource "aws_instance" "ec2" {  

  for_each = toset(var.regions)  

  ami = "ami-057752b3f1d6c4d6c"  

  instance_type = "t2.micro"  

  availability_zone = "${each.value}"  
}  
   
output "instance_public_ips" {  

  value = {  

    for instance_id, instance in aws_instance.ec2 :  

      instance.id => instance.public_ip  
  }  

} 

