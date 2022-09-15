# Create the data sources we will need to refer to

data "nsxt_policy_transport_zone" "overlay_tz" {
    display_name = "${var.nsx_data_vars["transport_zone"]}"
}

data "nsxt_policy_tier0_gateway" "tier0_router" {
  display_name = "${var.nsx_data_vars["t0_router_name"]}"
}

data "nsxt_policy_edge_cluster" "edge_cluster1" {
    display_name = "${var.nsx_data_vars["edge_cluster"]}"
}

# Create data sources for some NSServices that we need to create FW rules
data "nsxt_ns_service" "https" {
  display_name = "HTTPS"
}

data "nsxt_ns_service" "mysql" {
  display_name = "MySQL"
}

data "nsxt_ns_service" "ssh" {
  display_name = "SSH"
}
#data "nsxt_policy_dhcp_server" "dhcp_server" {
#  display_name = "${var.nsx_data_vars["dhcp_server"]}"
#}