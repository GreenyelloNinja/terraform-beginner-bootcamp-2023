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

variable "index_html_filepath" {
  description = "File path for the index.html file"
  type        = string

  validation {
    condition     = fileexists(var.index_html_filepath)
    error_message = "The specified file path does not exist or is invalid"
  }
}

variable "error_html_filepath" {
  description = "File path for the error.html file"
  type        = string

  validation {
    condition     = fileexists(var.error_html_filepath)
    error_message = "The specified file path does not exist or is invalid"
  }
}

variable "content_version" {
  type        = number
  description = "Content version number"
  
  validation {
    condition     = var.content_version > 0 && ceil(var.content_version) == var.content_version
    error_message = "Content version must be a positive integer"
  }
  default = 1
}

variable "assets_path" {
  description = "path to assets folder"
  type = string
  }