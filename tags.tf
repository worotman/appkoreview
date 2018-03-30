variable "tags" {
  type = "map"

  default {
    Costcenter  = "devops"
    Environment = "test1"
    Company     = "Appko"
  }
}
