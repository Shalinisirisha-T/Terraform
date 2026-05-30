# variables.tf

variable "instances" {
  type = list(string)

  default = [
    "mongodb",
    "redis",
    "frontend"
  ]
}

variable "zone_id" {
  default = "Z09710483QRR3GW8SSTEV"
}

variable "domain_name" {
  default = "shalinidaws88s.online"
}