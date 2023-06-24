variable "count_loop" {  
  default = 2 
}  

resource "aws_instance" "example" {  
   
  count = var.count_loop 
  ami = "ami-057752b3f1d6c4d6c"  
  instance_type = "t2.micro"  
}  
   
output "public_ips" {  
  value = [  
    for instance in aws_instance.example : instance.public_ip  
  ]  
}  
   
output "print_public_ips" {  
  value = [  
    for instance in aws_instance.example : "Instance ${instance.id} public IP: ${instance.public_ip}"  
  ]  
} 