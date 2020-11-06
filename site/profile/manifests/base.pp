class profile::base {
  user {'admin':
  ensure => present,
 }
}

class { 'docker':
  docker_ee => true,
  docker_ee_source_location => 'https://<docker_ee_repo_url>',
  docker_ee_key_source => 'https://<docker_ee_key_source_url>',
}
