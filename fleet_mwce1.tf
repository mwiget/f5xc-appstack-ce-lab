resource "volterra_fleet" "mwce1" {
  name        = "mwce1"
  namespace   = "system"
  fleet_label = "mwce1"
  description = ""

  inside_virtual_network {
    name = volterra_virtual_network.inside.name
    namespace   = "system"
  }

  interface_list {
    interfaces {
      name = volterra_network_interface.eth1.name
      namespace   = "system"
    }
  }

  network_connectors {
    name = volterra_network_connector.internet.name
    namespace   = "system"
  }

  network_connectors {
    name = volterra_network_connector.global.name
    namespace   = "system"
  }

  network_firewall {
    name = volterra_network_firewall.nfw.name
    namespace   = "system"
  }

  no_bond_devices          = true
  no_dc_cluster_group      = true
  disable_gpu              = true
  logs_streaming_disabled  = true
  default_storage_class    = true
  no_storage_device        = true
  no_storage_interfaces    = true
  no_storage_static_routes = true
  allow_all_usb            = true
}
