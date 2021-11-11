data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

resource "aws_eks_addon" "vpc_cni" {
  count             = var.install_vpc_cni ? 1 : 0
  cluster_name      = var.eks_cluster_id
  addon_name        = "vpc-cni"
  resolve_conflicts = "OVERWRITE"
  tags              = var.tags
}

resource "aws_eks_addon" "kube_proxy" {
  count             = var.install_kube_proxy ? 1 : 0
  cluster_name      = var.eks_cluster_id
  addon_name        = "kube-proxy"
  resolve_conflicts = "OVERWRITE"
  tags              = var.tags
}

resource "aws_eks_addon" "coredns" {
  count             = var.install_coredns ? 1 : 0
  cluster_name      = var.eks_cluster_id
  addon_name        = "coredns"
  resolve_conflicts = "OVERWRITE"
  tags              = var.tags
}