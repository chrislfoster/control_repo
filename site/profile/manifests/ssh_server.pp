class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQzSIMmo5pX96LhAlokaLWxeIcx1hHucQHSnhxsBGvfgKNYIyUxHViR2dwJTSVx53W7PMVHV3RZD+VnWXqdyQ++xKFxPlkal59sstFYKTr0Hy5cdog11hSPmVISlXr/5xamuXXNLfo47p4cfkSk93EQxcg+FqJK6B22lUEqPoxtraCDYTbvlw9wtzROz7YGOt1DV2FaeMW8dA/mwmKkwKF/ZqYDuDEBy/7bpaGVdfVxg/Vdm+QH+eSnY0WMp+OqaBajB4er1ahNmGhVM+mpfldqpWhzlWTZGOPWgNJj2a7loEfPBaHcWll+pmCEbU/X+uNa1Q5StYz8TNXaJANVHTT',
  }  
}
