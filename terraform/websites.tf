module "squiggle_org" {
  source          = "./modules/website"
  environment     = var.environment
  domain          = var.domain_squiggle
  zone            = "squiggle.org"
}

module "gef_org_uk" {
  source          = "./modules/website"
  environment     = var.environment
  domain          = var.domain_gef
  zone            = "gef.org.uk"
  cf_functions    = [aws_cloudfront_function.index_rewrite.arn]
}

module "kendal_me" {
  source          = "./modules/website"
  environment     = var.environment
  domain          = var.domain_kendal
  zone            = "kendal.me"
}