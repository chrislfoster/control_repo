node default {
}

node 'manifest.puppet.vm' {
  include role::master_server
  
}
