locals {
  student_json_data=file("./student_data.json")
  student_tf_data = jsondecode(local.student_json_data)
  user_json_data=file("./user_data.json")
  user_tf_data = jsondecode(local.user_json_data)
}