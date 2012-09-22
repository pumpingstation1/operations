# 
# /etc/manifest/site.pp is the first file that, by default, the PuppetMaster
# loads if you don't use an ENC.

# Roles. Here you define what classes that define what services or options your machines will have.
import "roles/*.pp"

# Nodes. Here you define your nodes (hostnames) via regex or 
import "nodes/*.pp"

# General settings for standard types
Exec { path => "/bin:/sbin:/usr/bin:/usr/sbin" }
