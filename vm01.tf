resource "azurerm_virtual_machine" "vm01" {
  name                  = "vm01"
  vm_size               = "Standard_B1S"
  network_interface_ids = [azurerm_network_interface.if.id]

  location            = azurerm_resource_group.rg_bmw.location
  resource_group_name = azurerm_resource_group.rg_bmw.name


  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = {
    workshop = "devops"
  }
}
