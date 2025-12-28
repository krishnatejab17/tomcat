# output "s3_bucket_name" {
#   value       = aws_s3_bucket.example.bucket
#   description = "The name of the S3 bucket"
# }

output "app_url" {
  value = "http://localhost:8080/demo/"
}
