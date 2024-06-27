resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    name = "main"
  }
}

# resource "aws_flow_log" "vpc_flow_log" {
#   iam_role_arn    = aws_iam_role.example.arn
#   log_destination = aws_cloudwatch_log_group.example.arn
#   traffic_type    = "ALL"
#   vpc_id          = aws_vpc.main.id
# }

# resource "aws_cloudwatch_log_group" "example" {
#   name       = "example"
#   kms_key_id = "mykmskey"
# }

# data "aws_iam_policy_document" "assume_role" {
#   statement {
#     effect = "Allow"

#     principals {
#       type        = "Service"
#       identifiers = ["vpc-flow-logs.amazonaws.com"]
#     }

#     actions = ["sts:AssumeRole"]
#   }
# }

# resource "aws_iam_role" "example" {
#   name               = "example"
#   assume_role_policy = data.aws_iam_policy_document.assume_role.json
# }

# data "aws_iam_policy_document" "example" {
#   statement {
#     effect = "Allow"

#     actions = [
#       "logs:CreateLogGroup",
#       "logs:CreateLogStream",
#       "logs:PutLogEvents",
#       "logs:DescribeLogGroups",
#       "logs:DescribeLogStreams",
#     ]

#     resources = ["*"]
#   }
# }
