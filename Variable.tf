variable "aws_access_key" {
        description = "Access key"
}

variable "aws_secret_key" {
        description = "secret key"
}
variable "name" {
  default = {
    "0" = "Tarek"
    "1" = "Vishnu"
    "2" = "Raja"
  }
}

variable "create_user" {
  description = "Whether to create the IAM user"
  default     = true
}

variable "create_iam_user_login_profile" {
  description = "Whether to create IAM user login profile"
  default     = true
}

variable "path" {
  description = "Desired path for the IAM user"
  default     = "/"
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  default     = false
}

variable "password_reset_required" {
  description = "Whether the user should be forced to reset the generated password on first login."
  default     = true
}

variable "password_length" {
  description = "The length of the generated password"
  default     = 20
}

variable "upload_iam_user_ssh_key" {
  description = "Whether to upload a public ssh key to the IAM user"
  default     = false
}

variable "ssh_key_encoding" {
  description = "Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use SSH. To retrieve the public key in PEM format, use PEM"
  default     = "PEM"
}

variable "ssh_public_key" {
  description = "The SSH public key. The public key must be encoded in ssh-rsa format or PEM format"
  default = "rajashekar"
#default     = ""
}

variable "region" {
        default = "us-east-1"
        description = "Region"
}
variable "logs" {
        description = "Log Bucket Name"
        default = "cloudtrailraja"
}
variable "email"{
        default = "rajashekar362@outlook.com"
}
variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
  type        = "string"
}
