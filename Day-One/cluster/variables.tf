variable "pubsub1" {
  type = string
  default = "subnet-0a6f07d53a064975b"
}

variable "pubsub2" {
  type = string
  default = "subnet-017d2b94221525dd9"
}

variable "eksIAMRole" {
  type = string
  default = "prodEKSCluster"
}

variable "EKSClusterName" {
  type = string
  default = "prodEKS"
}

variable "k8sVersion" {
  type = string
  default = "1.26"
}

variable "workerNodeIAM" {
  type = string
  default = "prodWorkerNodes"
}

variable "max_size" {
  type = string
  default = 4
}

variable "desired_size" {
  type = string
  default = 3
}
variable "min_size" {
  type = string
  default = 3
}

variable "instanceType" {
  type = list
  default = ["t2.large"]
}

variable "environment" {
  type = string
  default = "prod"
}