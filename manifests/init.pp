class dns_zones (
  String $dns_zones_url,
  String $dns_zones_directory,
  String $revision = 'master',
) {

  vcsrepo { $dns_zones_directory:
    ensure   => present,
    provider => git,
    remote   => 'origin',
    revision => $revision,
    source   => $dns_zones_url,
  }
}
