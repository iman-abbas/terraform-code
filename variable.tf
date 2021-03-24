variable "name-role-policy" {
  description = "provide the policy for role"
  type        = string
  default     = null
}
variable "policy" {
  description = "provide the policy for role"
  type        = string
  default     = null
}

variable "name-role" {
  description = "provide the role name"
  type        = string
  default     = null
}
variable "assume-role-policy" {
  description = "provide the role name"
  type        = string
  default     = null
}

variable "ami" {
  description = "provide ami id"
  type        = string
  default     = null
}
variable "instance" {
  description = "type of instance"
  type        = string
  default     = null
}
variable "userdata-file" {
  description = "userdata file path"
  type        = string
  default     = null
}
variable "tag" {
  description = "tag for ec2 instance"
  type        = string
  default     = null
}