variable "region" {}
variable "cluster_identifier" {}
variable "engine" {}
variable "engine_version" {}

variable "instance_class" {}
variable "database_name" {}
variable "master_username" {}
#variable "master_password" {}
variable "preferred_backup_window" {}
variable "skip_final_snapshot" {}

variable "subnet_ids" {
  type = list(any)
}

variable "availability_zones" {
  type = list(string)
}

variable "allowed_hosts" {
  type = list(any)
}


