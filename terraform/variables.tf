variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "The environment for the resources"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "tomcat_version" {
  default = "10"
}

variable "tomcat_user" {
  default = "tomcat"
}

variable "app_name" {
  default = "demo"
}
