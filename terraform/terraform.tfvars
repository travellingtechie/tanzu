nsx = {
    ip  = "192.168.110.201"
    user = "admin"
    password = "VMware1!VMware1!"
}
nsx_data_vars = {
    transport_zone  = "nsx-overlay-transportzone"
    t0_router_name = "T0-GW"
    edge_cluster = "EdgeCluster"
    t1_router_name = "tf-T1GW"
    dhcp_server = "Default"
}
nsx_rs_vars = {
    t1_router_name = "tf-T1GW"
}

ip_set = "192.168.110.10,172.16.10.11"


nsx_tag_scope = "project"
nsx_tag = "terraform-demo"

vsphere = {
    vsphere_user = "administrator@vsphere.local"
    vsphere_password = "VMware1!"
    vsphere_ip = "192.168.110.22"
    dc = "DC-SiteA"
    datastore = "NFS"
    resource_pool = "Compute-Cluster/Resources"
    vm_template = "t_template_novra"
}


app_listen_port = "8443"

db_user = "medicalappuser" # Database details 
db_name = "medicalapp"
db_pass = "VMware1!"

dns_server_list = ["10.29.12.201", "8.8.8.8"]


web = {
    ip = "10.29.15.210"
    gw = "10.29.15.209"
    mask = "28"
    nat_ip = "" # If the ip above is routable and has internet access you can leave the NAT IP blank
    vm_name = "web"
    domain = "yasen.local"
    user = "root" # Credentails to access the VM
    pass = "VMware1!"
}

app = {
    ip = "192.168.245.21" # If this IP is not routable and has no internet access you need to condigure a NAT IP below
    gw = "192.168.245.1"
    mask = "24"
    nat_ip = "10.29.15.229"
    vm_name = "app"
    domain = "yasen.local"
    user = "root"
    pass = "VMware1!"
}

db = {
    ip = "192.168.247.21"
    gw = "192.168.247.1"
    mask = "24"
    nat_ip = "10.29.15.228"
    vm_name = "db"
    domain = "yasen.local"
    user = "root"
    pass = "VMware1!"
}

