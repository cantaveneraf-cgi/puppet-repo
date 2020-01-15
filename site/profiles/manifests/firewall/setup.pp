class profiles::firewall::setup {

  file { '/tmp/profiles-firewall-setup':
    ensure  => 'present',
    replace => 'yes',
    content => "This comes from profiles::firewall::setup\n",
    mode    => '0644',
  }

  class { ['profiles::firewall::pre', 'profiles::firewall::post']: }

}