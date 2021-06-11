variable "bucket_name" {
  description = "The Name of the unique bucket"
  type        = string
}

variable "tags" {
  description = "Tags to set on the s3 bucket"
  type        = map(string)
}