# DEV Infra
module "dev-infra-app" {
    source = "./App-Infra"
    Environment = "dev"
    Bucket_Name = "infra-app-bucket"
    S3_Count = 2
    DynamoDB_Table_Name = "infra-app-dynamodb-tbl"
    DynamoDB_Hash_Key = "HashKeyId"
}

# STG Infra
module "stg-infra-app" {
    source = "./App-Infra"
    Environment = "stg"
    Bucket_Name = "infra-app-bucket"
    S3_Count = 1
    DynamoDB_Table_Name = "infra-app-dynamodb-tbl"
    DynamoDB_Hash_Key = "HashKeyId"
}

# PRD Infra
module "prd-infra-app" {
    source = "./App-Infra"
    Environment = "prd"
    Bucket_Name = "infra-app-bucket"
    S3_Count = 4
    DynamoDB_Table_Name = "infra-app-dynamodb-tbl"
    DynamoDB_Hash_Key = "HashKeyId"
}