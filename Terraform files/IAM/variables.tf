#IAM Module Input Arguments
variable "project_id" {
  type = string
}

variable "vm_roles"{
  type = list(any)
}