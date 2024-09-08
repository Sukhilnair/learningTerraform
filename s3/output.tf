output "bucketarn" {
  description = "Public IP for EC2"
  value = aws_s3_bucket.mys3bucket.arn
}
