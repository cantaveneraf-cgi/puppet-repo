class profiles::firewall::pre {

  file { '/tmp/profiles-firewall-pre':
    ensure  => 'present',
    replace => 'yes',
    content => "This comes from profiles::firewall::pre\n",
    mode    => '0644',
  }

}