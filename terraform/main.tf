terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

resource "null_resource" "k3d_cluster" {
  triggers = {
    cluster_name = "devops-prod-cluster"
  }

  provisioner "local-exec" {
    command = "k3d cluster create ${self.triggers.cluster_name} --api-port 6550 -p '8081:80@loadbalancer' --agents 1"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "k3d cluster delete ${self.triggers.cluster_name}"
  }
}
