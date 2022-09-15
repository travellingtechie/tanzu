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

data "nsxt_policy_dhcp_server" "dhcp_server" {
  display_name = "${var.nsx_data_vars["dhcp_server"]}"
}