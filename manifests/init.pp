class dns_zones (
  String $dns_zones_directory,
) {

  file { $dns_zones_directory:
    ensure => directory,
    mode   => '0755',
  }
  -> file { "${dns_zones_directory}/db.int.othalland.xyz":
    ensure  => present,
    mode    => '0644',
    content => template('dns_zones/db.int.othalland.xyz.erb'),
  }
}
