class profiles::firewall::post {

  file { '/tmp/profiles-firewall-post':
    ensure  => 'present',
    replace => 'yes',
    content => "This comes from profiles::firewall::post\n",
    mode    => '0644',
  }

}