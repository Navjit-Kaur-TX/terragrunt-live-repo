# Virtual Machine Resource
resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  datacenter_id = var.datacenter
  folder           = var.folder
  resource_pool_id = var.resource_pool_id

  num_cpus         = var.num_cpus
  memory           = var.memory

  network_interface {
    for_each = var.networks
    network_id = each.value.network_id
  }

  disk {
    for_each = var.disks
    datastore_id = each.value.datastore_id
    size         = each.value.size
  }

  guest_id                 = var.guest_id
  wait_for_guest_net_timeout = 5 

  # Apply customization only if provided
  customization = var.customization != null ? var.customization : null

  # Apply ISO configuration only if provided
  cdrom = var.cdrom != null ? var.cdrom : null
}
