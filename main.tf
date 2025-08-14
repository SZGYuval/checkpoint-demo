resource "aws_ssm_parameter" "foo" {
  name = "foo"
  type = "String"
  value = "bar"
}
resource "aws_ssm_parameter" "check" {
  name = "check"
  type = "String"
  value = "test"
}
resource "aws_ssm_parameter" "second" {
  name = "second"
  type = "String"
  value = "second"
}

module "ecrRepo" {
  source = "./modules/ecr"
  ecr_repo_name = local.ecr_repo_name
}