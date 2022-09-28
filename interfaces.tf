resource "volterra_network_interface" "eth1" {
  name      = "mwce-eth1"
  namespace   = "system"
  description = ""

  ethernet_interface {
    device = "eth1"
    is_primary = true
    site_local_inside_network = true
    monitor_disabled = true    
  }
}

