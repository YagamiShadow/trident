/**
 * Copyright 2020 Praetorian Security, Inc.
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

# -----------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These parameters must be supplied when consuming this module.
# -----------------------------------------------------------------------------

variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "location" {
  description = "The location (region or zone) to host the cluster in"
  type        = string
}

variable "name" {
  description = "The name of the cluster"
  type        = string
}

# -----------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed.
# -----------------------------------------------------------------------------

variable "network" {
  description = "A reference (self link) to the VPC network to host the cluster in"
  type        = string
  default     = "default"
}

variable "release_channel" {
  description = "The release_channel to use for automatic updates to the cluster"
  type        = string
  default     = "STABLE"
}
