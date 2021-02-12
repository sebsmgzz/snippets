# Disks

Managements
-----------
+ Unmanaged
  + Required to be stored on a **premium** 'storage account'
  + Stored on Azure blob storage
+ Managed
  + Durability and availability managed by azure
  + Designed for 99.999% availability

Types
-----
+ Ultra disk
  + Not available on every region
+ Premium SSD
+ Standard SSD
+ Standard HDD

Server side encryption
----------------------
+ Protects the data at rest
+ Data unencrypted with Plataform Managed Keys (PMK).

Premium disks
-------------
+ Recomended for **databases**
+ Only available on VM with appropiate size 

Details
-------
+ Input Output Operations (IOPS)
  + Read and write operations on the data per second
+ Throughput
  + The amount of data sent to the disk at a specific interval (MB/s)

