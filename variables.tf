variable "eks_cluster_id" {
  description = "The EKS cluster ID"
  type        = string
}

variable "tags" {
  description = "A map of tags to use on all resources"
  type        = map(string)
}

# VPC
variable "vpc_id" {
  description = "ID of an existing VPC where resources will be created"
  type        = string
  default     = ""
}

variable "install_vpc_cni" {
  description = "Add VPC CNI to EKS Cluster ?"
  type        = bool
  default     = false
}

variable "install_kube_proxy" {
  description = "Add Kube Proxy to EKS Cluster ?"
  type        = bool
  default     = false
}

variable "install_coredns" {
  description = "Add CoreDNS to EKS Cluster ?"
  type        = bool
  default     = false
}