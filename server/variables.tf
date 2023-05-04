variable "project_name" { 
    description = "The name of the project, to be used in naming resources"
}

variable "project_id" { 
    description = "The name of the project in OpenStack"
}

variable volume_id {
    description = "the ID of the reserved storage volumne"
}

variable "floating_ip" { 
    description = "The floating IP reserved for the service"
}

variable "ssh_mosh_secgroup_id" { 
    description = "The ID of the security group for SSH/MOSH access"
}

variable "mariadb_secgroup_id" { 
    description = "The ID of the security group for MariaDB access"
}

variable "vm_flavour" {
    description = "The VM flavour to create"
    default = "io.160GB"
}

variable "mariadb_root_user" { 
    description = "MariaDB root user name"
}

variable "mariadb_root_password" { 
    description = "MariaDB root user password (autogenerated if not given)"
    default = "" 
}

variable "cej_password" { 
    description = "MariaDB ColumnStore cross-engine-join user password (autogenerated if not given)"
    default = "" 
}

variable "cmapi_key" { 
    description = "MariaDB ColumnStore manager API key (autogenerated if not given)"
    default = "" 
}

variable "use_s3_storage" { 
    description = "Whether to use S3 to store ColumnStore data"
    type = bool
    default = false
}

variable "s3_bucket" { 
    description = "S3 bucket to use (if S3 backend storage used)"
    default = "" 
}

variable "s3_access_key_id" { 
    description = "S3 access key id"
    default = " "
}

variable "s3_secret_access_key" { 
    description = "S3 secret access key"
    default = " "
}

variable "s3_endpoint" { 
    description = "S3 endpoint address (if S3 backend storage used)"
    default = "a3s.fi" 
}

variable "data_volume_initialised" { 
    description = "Whether the data volume has already been initialised or whether it needs to be initialised"
    type = bool
}