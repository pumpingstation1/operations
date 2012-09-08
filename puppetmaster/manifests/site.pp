# 
# /etc/manifest/site.pp is the first file that, by default, the PuppetMaster
# loads if you don't use an ENC.

# Role classes, include modules and configurations specific to a role
import "roles/*.pp"

# Nodes. Here you define your actual "real" nodes (hostnames). They can inherit the "zone" nodes defined in 
# infrastructure.pp and have obviously to be customized. You can split the nodes definitions in different files.
import "nodes/*.pp"

# General settings for standard types
Exec { path => "/bin:/sbin:/usr/bin:/usr/sbin" }
