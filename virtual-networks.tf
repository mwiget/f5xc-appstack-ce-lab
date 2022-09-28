resource "volterra_virtual_network" "inside" {
  name      = "mwce-inside"
  namespace = "system"
  site_local_inside_network = true
}

resource "volterra_virtual_network" "global" {
  name      = "mwce-global"
  namespace = "system"
  global_network = true
}
