variable "user_uuid" {
  description = "The UUID of the user"
  type        = string

 validation {
    condition       = can(regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", var.user_uuid))
    error_message   = "User UUID must be in the format of a UUID (e.g., 123e4567-e89b-12d3-a456-426614174000)"
 }
}

variable "bucket_name" {
  description = "Name of the AWS S3 bucket"
  type        = string

  validation {
    condition     = length(var.bucket_name) >= 3 && length(var.bucket_name) <= 63
    error_message = "Bucket name must be between 3 and 63 characters long"
  }

  validation {
    condition     = can(regex("^([a-z0-9.-]+)$", var.bucket_name))
    error_message = "Bucket name must contain only lowercase letters, numbers, periods, and hyphens"
  }
}
