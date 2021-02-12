# Disaster Recovery

+ Site reocvery:
  + Allows the vm to recplicate data inot a diffrent target region
  + You can exchange regions as needed
+ Cache storage account
  + For the source region a storage account is needed
  + Saves changes before being sent to target.
+ Target resources created:
  + A resource group that the target vm belongs to
  + A new virutla network that te target vm will reside in
+ If ths source vm is using unmanaged disks, the new storage account will be created in the target region.
+ If the source vm, is part of an availability zone, the same zone number will be allocated to the target VM in the target region.

Replication policy
------------------
+ Default policy settings
  + Point retention: 24 hours, Specifies how long the recovery services keep the recovery points
  + App consistent snapshot: 24 hours, Specifies how long the recovery services takes an application consisten snapshot
