# Custom script extension

+ Used on azure portal to execute scripts.
+ Scripts can be located on azure storage account or github
+ A duration of 90 minutes is allowed for the script to run. Any longer results in a failed extension provision.
+ Not ideal to place reboots in the script.
+ Runs only once
+ Runs as an impersonation of the LocalSystem account.

How to (from storage account)
----------------------------
+ Create storage account on **same** region as VM
+ Create a new container in storage account
+ Upload script into container
+ Navigate to VM > Extensions > Custom Scripts
+ Select the storage account and the script file

How to (from github)
--------------------
+ Navigate to the azure shell
+ Upload the settings.json file
+ Run the command
