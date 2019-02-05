variable "KubeNodeType" {default = "m4.large"}
variable "KubeNodes" {default = "3"}
variable "Ingestion" {default = "kafka"}
variable "IngestionPorts" {default = ""}
variable "IngestionMaster" {default = "1"}
variable "IngestionWorker" {default = "3"}
variable "IngestionMasterCPUMax" {default = "1000"}
variable "IngestionMasterCPUMin" {default = "1000"}
variable "IngestionMasterMemMax" {default = "512"}
variable "IngestionMasterMemMin" {default = "256"}
variable "IngestionWorkerCPUMax" {default = "1000"}
variable "IngestionWorkerCPUMin" {default = "1000"}
variable "IngestionWorkerMemMax" {default = "512"}
variable "IngestionWorkerMemMin" {default = "256"}
variable "Compute" {default = "spark"}
variable "ComputePorts" {default = ""}
variable "ComputeMaster" {default = "1"}
variable "ComputeWorker" {default = "3"}
variable "ComputeMasterCPUMax" {default = "1000"}
variable "ComputeMasterCPUMin" {default = "1000"}
variable "ComputeMasterMemMax" {default = "512"}
variable "ComputeMasterMemMin" {default = "256"}
variable "ComputeWorkerCPUMax" {default = "1000"}
variable "ComputeWorkerCPUMin" {default = "512"}
variable "ComputeWorkerMemMax" {default = "256"}
variable "ComputeWorkerMemMin" {default = "256"}
variable "Database" {default = "cassandra"}
variable "DatabasePorts" {default = ""}
variable "DatabaseCopies" {default = "1"}
variable "DatabaseSize" {default = "40"}
variable "EC2num" {default = "0"}
variable "EC2type" {default = "t2.micro"}
variable "EC2Ports" {default = ""}
variable "database_exists" {default = 1}
variable "compute_exists" {default = 1}
variable "ingestion_exists" {default = 1}