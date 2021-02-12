# Availability sets

When you host your virtual machines in Azure, you sometimes need to cater to the following
+ An unplanned event wherein the underlying infrastructure fails unexpectedly. The failures could be attributed to network failures , local disk failures or even rack failures.
+ Planned maintenance events , wherein Microsoft needs to make planned updates to the underlying physical environment. In such cases , a reboot might be required on your virtual machine.

You can increase the availability of your application by making use of availability sets. Each virtual machine that is assigned to the availability set is assigned a separate fault and update domain.

**Fault domains** are used to define the group of virtual machines that share a common source and network switch. You can have up to 3 fault domains.

**Update domains** are used to group virtual machines and physical hardware that can be rebooted at the same time. You can have up to 20 update domains. 
