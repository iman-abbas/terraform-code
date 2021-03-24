resource "aws_iam_role_policy" "test_policy" {
  name = var.name-role-policy
  role = aws_iam_role.test_role.id


  policy = var.policy
}

resource "aws_iam_role" "test_role" {
  name = var.name-role

  assume_role_policy = var.assume-role-policy
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance
  user_data = "${file(var.userdata-file)}"

  tags = {
    Name = var.tag
  }
}