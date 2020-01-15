class profiles::ssh::server {

  file { '/tmp/profiles-ssh-server':
    ensure  => 'present',
    replace => 'yes',
    content => "This comes from profiles::ssh::server\n",
    mode    => '0644',
  }

  file { '/etc/ssh/sshd_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => file( 'profiles/ssh/sshd_config'),
  }
  
}