resource "aws_dynamodb_table" "vz_table" {
  name           = "vz_table"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "primaryKey"

    attribute {
        name = "primaryKey"
        type = "S"
    }
}