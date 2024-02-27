provider "google" {
  credentials = file("/home/biswajit/Downloads/bigquery_key.json")
  project     = var.project
  region      = var.region
}

module "database_instance" {
  source            = "./modules/database_instance"
  project           = var.project
  region            = var.region
  instance_name     = var.instance_name
  database_version  = var.database_version
}

module "datastream_connection_profile" {
  source               = "./modules/datastream_connection_profile"
  project              = var.project
  region               = var.region
  #instance_ip_address = module.database_instance.primary_ip_address
}

module "replication" {
  source                = "./modules/replication"
  project               = var.project
  region                = var.region
  primary_instance_name = module.database_instance.primary_instance_name
  standby_instance_name = module.database_instance.standby_instance_name
  credentials_file      = var.credentials_file
}

module "reverse_proxy" {
  source                = "./modules/reverse_proxy"
  project               = var.project
  region                = var.region
  instance_ip_address   = module.database_instance.primary_ip_address
  credentials_file      = var.credentials_file
}

module "instances" {
  source         = "./modules/instances"
  project        = var.project
  region         = var.region
  primary_count  = var.primary_count
  credentials_file  = var.credentials_file
}