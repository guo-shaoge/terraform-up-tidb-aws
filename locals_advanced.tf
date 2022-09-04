# Changes to these locals are easy to break something. Ensure you know what you are doing (see each comment).

locals {
  # image is region-local. If you changed region, please also change image.
  region = "us-east-2"
  image  = "ami-0fb653ca2d3203ac1" # Ubuntu 20.04

  # If you want to change instance type, ensure that GP3 EBS is available in the instance type.
  # c5.2xlarge: 8vCPU/16G_mem/EBS
  # c5.4xlarge: 16vCPU/32G_mem/EBS
  # r5.2xlarge: 8vCPU/64G_mem/EBS
  tidb_instance    = "c5.2xlarge"
  tikv_instance    = "r5.2xlarge"
  pd_instance      = "c5.2xlarge"
  tiflash_wn_instance = "m5.xlarge"
  tiflash_rn_instance = "m6a.2xlarge"
  center_instance  = "c5.2xlarge"

  master_ssh_key         = "./master_key"
  master_ssh_public      = "./master_key.pub"
  alternative_ssh_public = "~/.ssh/id_rsa.pub"
}
