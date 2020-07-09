# Copyright 2019 The Tranquility Base Authors
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "host_project_id" {
  description = "id for the shared vpc project"
  type        = string
}


variable "eagle_console_project_id" {
  description = "id for the eagle console project"
  type        = string
}

variable "bastion_project_id" {
  description = "id for the bastion project"
  type        = string
}

variable "telemetry_project_id" {
  description = "id for the telemetry project"
  type        = string
}
