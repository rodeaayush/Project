  
variable "instance _count" {
  description = "Number of instance to create"
  type = number
  default = 5
} 

variable "instance_type" {
  description = "Type of EC2 instance"
  type = string
  default = "t2.micro"

}
