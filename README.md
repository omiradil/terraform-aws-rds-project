
 ## Please add below code

```
  module "rds_db" {
  source = "../"
  region = "us-east-2"

  database_name           = "dbname"
  cluster_identifier      = "aurora-cluster"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.03.2"
  availability_zones      = ["us-east-2a", "us-east-2b", "us-east-2c"]
  instance_class          = "db.t2.micro"
  master_username         = "foo"
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true

  subnet_ids = [
    "subnet-01c90d69cc6c59604",
    "subnet-0489671740e272941",
    "subnet-09bbb804aabae7eec"
  ]

  allowed_hosts = [
    "127.0.0.0/32"
  ]

}
      
}
```
