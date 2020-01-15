# Config common to all nodes
class profiles::common {

  # common packages
  package { [
      'vim',
      'git'
    ]:
    ensure => present,
  }
  
  # sshd config
  include profiles::ssh::server

  # base firewall config
  include profiles::firewall::setup

  file { '/tmp/profiles-common':
    ensure  => 'present',
    replace => 'yes',
    content => "This comes from the profiles::common\n",
    mode    => '0644',
  }

}
