resource "volterra_network_connector" "internet" {
  name      = "mwce-internet"
  namespace   = "system"

  sli_to_slo_snat {
    default_gw_snat = true
  }
  disable_forward_proxy = true
}

resource "volterra_network_connector" "global" {
  name      = "mwce-global"
  namespace = "system"

  sli_to_global_dr {
    global_vn {
      namespace = "system"
      name = volterra_virtual_network.global.name
    }
  }
  disable_forward_proxy = true
}

