class { 'r10k':
  version => '1.2.0',
  sources => {
    'puppet' => {
      'remote'  => 'https://github.com/allcgas/puppetenvs.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  manage_modulepath => true,
  modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
}

ini_setting { 'manifestdir':
 ensure => present,
 path => '/etc/puppet/puppet.conf',
 section => 'main',
 setting => 'manifestdir',
 value => '/etc/puppet/environments/$environment/manifests',
}
