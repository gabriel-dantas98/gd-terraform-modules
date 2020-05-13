module "dynamodb_table" {

  # source = "git::https://github.com/gabriel-dantas98/gd-terraform-modules.git//aws/dynamodb"
  source = "../"

  name     = var.table_name
  hash_key = "ProductID"

  table_columns = [
    {
      name    = "ProductID",
      type    = "S",
      has_ttl = false
    },
    {
      name    = "ProductName",
      type    = "S",
      has_ttl = false
    },
    {
      name    = "ProductCategory",
      type    = "S",
      has_ttl = false
    }
  ]

  table_tags = {
    "Owner" = "gdantas",
    "Squad" = "InsightValey"
  }
}
