# Virtual machines

Along with the deployment of the virtual machine the following resources are needed:
+ Virtual network
  + Where the VM resides
+ The disks
  + The data disks holding the OS data
  + More can be added as needed
+ Network interface
  + Provided with the private and public IP address
  + Manages the packages flowing into/out of the VM
+ Network Security group (NSG)
  + Provides the firewall of the VM

Deployment limitations
----------------------
+ Size
  + The available sizes depend on the region and subscription when deploying.
  + Verify on Subscriptions > YourSubscription > Usages+Quotas > Provider: Microsoft.Compute
+ Connecting
  + When entering credentials from windows OS, the microsoft account is taken into consideration whne loggin in.
  + To fix specify the username as follows <VM_IP_ADDRES>\<VM_USERNAME> (i.e. 13.71.5.1.16\demouser)

Generations
-----------
| Capability            | Gen 1 | Gen 2 |
| :-------------------: | :---: | :---: |
| OS disk > 2 TB        | No    | Yes
| Azure disk encryption | Yes   | No

[Full docs](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/plan/should-i-create-a-generation-1-or-2-virtual-machine-in-hyper-v)


Installing IIS
--------------
1. Open Server Manager
2. Navigate to dashboard
3. Select 'Add roles and features'
4. Select 'Server Roles' > 'Web Server IIS'
5. Install
6. Navigate to the azure portal where the VM was deployed
7. Navigate to the VM resource
8. Navigate to the 'Networking' setting
9. Add inbound port rule
   1.  Port: 80
   2.  Protocol: TCP
   3.  Action: Allow

State
-----
+ The VM is deployed along with a temporary disk
+ The data on the temporary disk is erased on every maintainance event or when the VM is stopped.
+ The size of the temporary disk depends on the size of the vm instance.

Attaching disks
---------------
+ Attach the new disk on the azure portal
+ On the VM navigate to Server Manager > File and Storage Services > Volumes > Disks 
+ Right click the disk and select 'Initialize'
+ Right click the disk and select 'New Volume'
+ Continue throught the Wizard

Boot diagnostics
----------------
+ Storage account used for boot failures and custom images.
+ Located: VM > Boot diagnostics 

Serial console
--------------
+ Requires the boot diagnostics enabled with custom storage account.

Azure Confidential Computing
----------------------------
This is a feature that allows you to isolate sensitive data when it is being processed in the cloud.

This feature is available for your virtual machines. In Confidential computing , a part of the CPU’s hardware is reserved for the portion of code and data in your application. This portion is known as an enclave.

There is a special series of virtual machines which support confidential computing. This is the DCsv2-Series

[Read more](https://docs.microsoft.com/en-us/azure/virtual-machines/dcv2-series)

Azure Dedicated Hosts
---------------------
This service provides physical servers to host virtual machines. The physical server is dedicate to the Azure subscription.

The benefits of Azure Dedicated Hosts is that no other virtual machines from any other customers would be placed on the physical server.

You can also control the maintenance events that are initiated on the Azure platform.

Here the users are charged per dedicated host. This is irrespective of the number of virtual machines running on the physical server

[Read more](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/dedicated-hosts)

