
#---------------------------------------------------

resource "aws_instance" "ansible-master" {
  count = 1
  instance_type =  var.instance_type
  ami           = "ami-07d9b9ddc6cd8dd30"  # Replace with your AMI ID
  tags = {
        name = "ansible-master"  
        Envoirnment = "Ansible Server"
        Project = "MotoGP"
        Owner = "Aayush"
    }
}

resource "aws_instance" "node_servers" {
  count = 3
  instance_type =  var.instance_type
  ami           = "ami-07d9b9ddc6cd8dd30"  # Replace with your AMI ID
  tags = {
        name = "node_server-${count.index + 1}"  
        Envoirnment = "Application Server"
        Project = "MotoGP"
        Owner = "Aayush"
    }
}

resource "aws_instance" "monitoring_server" {
  count = 1
  instance_type =  var.instance_type
  ami           = "ami-07d9b9ddc6cd8dd30"  # Replace with your AMI ID
  tags = {
        name = "monitoring_server"
        Envoirnment = "Grafana/Prometheus Server"
        Project = "MotoGP"
        Owner = "Aayush"
    }
}

