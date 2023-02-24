
data "local_file" "helloWorld" {
    filename = "./hello.txt"
}

resource "local_file" "helloWorld1" {
    filename = "./hello1.txt"
    content = "Hello Terraform1 !!"
}


resource "local_file" "helloWorld2" {
    filename = "./hello2.txt"
    content = data.local_file.helloWorld.content
}