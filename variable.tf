variable "resource_group_name" {
  description = "(Required) The name of an existing resource group to be imported."
  type        = string
}

variable "name" {
  description = "(Required) The name of the Public IP"
  default     = "cloud-public-ip"
}

variable "allocation" {
  description = "(Required) The allocation method if this IP address. Possible values are Static or Dynamic"
  default     = "cloud-security-rule"
}

variable "ip_version" { 
  description = "(Optional) The Ip version. Possible values are IPv4 and IPv6"
  default     = "IPv4"
}

variable "env" {
  description = "(Optional) name of the resource group"
  default     = "dev"
}

variable "team_tag" {
  description = "(Optional) tag a team"
  default     = "DevOps"
}

variable "creator" {
  description = "(Optional) tag a creator"
  default     = "iankesh"
}
