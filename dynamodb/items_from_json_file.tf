resource "aws_dynamodb_table_item" "test_vz_data" {
 for_each = local.student_tf_data
 table_name = "vz_table"
 hash_key = "primaryKey"
 item = jsonencode(each.value)
}