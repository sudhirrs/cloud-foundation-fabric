/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "authorized_networks" {
  type    = map(string)
  default = null
}

variable "availability_type" {
  type    = string
  default = "ZONAL"
}

variable "backup_configuration" {
  type = object({
    enabled            = bool
    binary_log_enabled = bool
  })
  default = {
    enabled            = false
    binary_log_enabled = false
  }
}

variable "database_version" {
  type    = string
  default = "POSTGRES_13"
}

variable "databases" {
  type    = list(string)
  default = null
}

variable "disk_size" {
  type    = number
  default = null
}

variable "disk_type" {
  type    = string
  default = "PD_SSD"
}

variable "flags" {
  type    = map(string)
  default = null
}

variable "labels" {
  type    = map(string)
  default = null
}

variable "name" {
  type    = string
  default = "db"
}

variable "network" {
  type    = string
  default = "projects/xxx/global/networks/yyy"
}

variable "prefix" {
  type    = string
  default = null
}

variable "region" {
  type    = string
  default = "europe-west1"
}

variable "replicas" {
  type    = map(any)
  default = null
}

variable "users" {
  type    = map(string)
  default = null
}

variable "tier" {
  type    = string
  default = "db-g1-small"
}

variable "deletion_protection" {
  type    = bool
  default = false
}