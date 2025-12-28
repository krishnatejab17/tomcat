terraform {
  backend "s3" {
    bucket = "tomcat-dev"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
