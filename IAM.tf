resource "aws_iam_user" "this" {
   //count = "${var.create_user && var.create_iam_user_login_profile ? 1 : 0}"

   count = 3
    name          = "${lookup(var.name, count.index)}"
    path          = "${var.path}"
    force_destroy = "${var.force_destroy}"
  }
resource "aws_iam_user_login_profile" "this" {
  //count = "${var.create_user && var.create_iam_user_login_profile ? 1 : 0}"
  count = 3

  user                    = "${lookup(var.name, count.index)}"
  password_length         = "${var.password_length}"
  password_reset_required = "${var.password_reset_required}"
}
