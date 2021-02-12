# Azure backup for VMs

+ Used to backup the disks allocated to the vm
+ During first backup, an extension is installed on the vm
+ Extension used to take snapshow of the disk attached to the vm
+ For windows the backup service works with the windows volume shadow copy service to take an app consistent snapshot of the vm
+ For linux base vms, the service takes a file consistent backup.

+ Types of snapshots
  + Application consistent: Captures the memory content, pending IO operations
  + File system consistent: Captures all the files at the same time
  + Crash consistent: Happens when the vm shuts down at the time of the backup process

Recovery services vault
-----------------------
+ Made up by recovery points
  + File recovery
  + VM recovery
  + Disk recovery

Soft delete
-----------
+ Allows to recover deleted data from 11 days old.
+ Soft deleted data may negate the deletion of the vault.
+ Vault > Properties > Backup > Security > Soft delete

MARS Agent
----------
+ Also known as:
  + Azure backup agent
  + Azure recovery services agent
+ Extension for backup vaults
