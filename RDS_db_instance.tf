resource "aws_rds_cluster" "default" {
  cluster_identifier = var.cluster_identifier
  engine             = var.engine
  engine_version     = var.engine_version
  availability_zones = var.availability_zones
  database_name      = var.database_name
  master_username    = var.master_username
  master_password    = random_password.password.result
  # master_password    = var.master_password

  preferred_backup_window = var.preferred_backup_window
  skip_final_snapshot     = true
  

  
}