variable "aws_region" {
  description = "use aws region"
  type        = string
}

variable "aws_account_id" {
  description = "use aws account id"
  type        = string

  validation {
    condition     = length(var.aws_account_id) == 12 && can(regex("^\\d{12}$", var.aws_account_id))
    error_message = "Invalid AWS account ID"
  }
}

variable "aws_assume_role" {
  description = "role for pipeline service account to assume"
  type        = string
}

variable "is_state_account" {
  description = "create STATE account configuration"
  type        = bool
  default     = false
}

variable "state_account_id" {
  description = "arn principal root reference to state account id where all svc accounts are defined"
  type        = string
}

variable "all_nonprod_account_roles" {
  description = "arn reference to * roles for all non-production aws accounts; arn:aws:iam::*****12345:role/*"
  type        = list(any)
}

variable "all_production_account_roles" {
  description = "arn reference to * roles for all production aws accounts; arn:aws:iam::*****12345:role/*"
  type        = list(any)
}
