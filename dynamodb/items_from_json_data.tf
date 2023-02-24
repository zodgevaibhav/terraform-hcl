resource "aws_dynamodb_table_item" "test_vz_data_hardcoded" {
 table_name = "vz_table"
 hash_key = "primaryKey"

 item = <<ITEM
  {
   "primaryKey":{"S":"test/vz/hard_employee_1"},
   "dataKey":{"S":"name"},
   "data":{"S":"Vaibhav"}
  }
 ITEM
}