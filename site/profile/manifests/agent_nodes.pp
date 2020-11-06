class profile::agent_nodes {
  include 'docker'
  include dockeragent::node {'web.puppet.vm':}
  include dockeragent::node {'db.puppet.vm':}
}   

class { 'docker':
  use_upstream_package_source => false,
}
