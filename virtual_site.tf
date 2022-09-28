resource "volterra_virtual_site" "vs" {
  name      = "mwce-vs"
  namespace = "shared"

  site_selector {
    expressions = ["colo=marcel"]
  }

  site_type = "CUSTOMER_EDGE"

}

