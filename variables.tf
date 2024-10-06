variable "controls" {
  type = list(object({
    control_names           = list(string)
    organizational_unit_ids = list(string)
  }))
  description = "Configuration of AWS Control Tower Guardrails for the whole organization"
}

variable "ou_ids_test" {
  type    = string
  default = "ou-zl72-2k4u2kd2"
}

variable "ou_ids_security" {
  type    = string
  default = "ou-zl72-85iyjbk6"
}

variable "ou_ids_sandbox" {
  type    = string
  default = "ou-zl72-el3o3ztr"
}

variable "ou_ids_non_production" {
  type    = string
  default = "ou-zl72-rektquu3"
}
