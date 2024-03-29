#variable service_account_key_file {
#  description = "key .json"
#}
variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
#variable public_key_path {
# Описание переменной
#  description = "Path to the public key used for ssh access"
#}
#variable image_id {
#  description = "Disk image"
#}
#variable subnet_id {
#  description = "Subnet"
#}
#variable private_key_path {
# Описание переменной
#  description = "Path to the private key used for ssh access"
#}
#variable app_disk_image {
#  description = "Disk image for reddit app"
#  default     = "reddit-app-base"
#}
#variable db_disk_image {
#  description = "Disk image for reddit db"
#  default     = "reddit-db-base"
#}
variable "account_key_path" {
  description = "Path to the service account key file used for cloud access"
}
variable "s3_access_key" {
  description = "Object storage access key"
}
variable "s3_secret_key" {
  description = "Object storage secret key"
}
variable "bucket_name" {
  description = "Name of backet"
}

