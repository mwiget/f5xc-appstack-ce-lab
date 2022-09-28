resource "volterra_site_mesh_group" "smg" {
  name        = "mwce-smg"
  namespace   = "system"
  type        = "SITE_MESH_GROUP_TYPE_FULL_MESH"
  tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC"
  virtual_site {
    name = volterra_virtual_site.vs.name
    namespace = "shared"
  }
   depends_on = [volterra_virtual_site.vs]
}
