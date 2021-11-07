# colouring-london-config
A server configuration for hosting an instance of Colouring London

## Basic info

Colouring London site is deployed at Azure, with Ubuntu used as OS.

There is a staging instance and production instance.

Staging is used for final testing before deploying on production and for demo deployment of experimental features.

## Authorization

Note that staging and production instances are configured with IP filtering, to connect new administrator one of steps will include allowing to access from their IP.

Login is done using public-private key pairs.

## SSH config

On Linux it is typically in `~/.ssh/config`  

```
Host cl-sta
   HostName cl-staging.uksouth.cloudapp.azure.com
   User cladmin
   IdentitiesOnly yes
   IdentityFile /home/mateusz/.ssh/private_key_for_colouring_london.pem
Host cl-prod
   HostName cl-production.uksouth.cloudapp.azure.com
   User cladmin
   IdentitiesOnly yes
   IdentityFile /home/mateusz/.ssh/private_key_for_colouring_london.pem
```

# Backups

TODO: who maintains backups?

TODO: when restore from backups was tested last time?
