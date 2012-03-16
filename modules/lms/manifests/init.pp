class lms ($source, $folder, $method, $targetfolder, $targetfile='') {
  file {
    "/var/www/$folder":
      ensure  => directory,
      require => Class['apache'],
      owner   => 'apache',
      group   => 'apache',
  }
  package {
    'wget':
      ensure => installed,
  }
  if ($method == "zip") {
    package {
      'unzip':
        ensure => installed,
    }
    exec {
      'download lms':
        command => "wget -O /tmp/lms.zip.tmp ${source} && mv /tmp/lms.zip.tmp /tmp/lms.zip",
        creates => '/tmp/lms.zip',
        require => Package['wget'],
        path    => '/bin:/usr/bin',
    }
    exec {
      'extract lms':
        command => "unzip /tmp/lms.zip",
        require => [Package['unzip'], Exec['download lms'], File["/var/www/$folder"]],
        creates => "/var/www/$folder/$targetfolder/$targetfile",
        cwd     => "/var/www/$folder",
        user    => 'apache',
        path    => '/bin:/usr/bin',
    }
  }
  if ($method == "tgz") {
    package {
      'tar':
        ensure => installed,
    }
    exec {
      'download lms':
        command => "wget -O /tmp/lms.tgz.tmp ${source} && mv /tmp/lms.tgz.tmp /tmp/lms.tgz",
        creates => '/tmp/lms.tgz',
        path    => '/bin:/usr/bin',
        require => Package['wget'],
    }
    exec {
      'extract lms':
        command => "tar -C /var/www/$folder -xf /tmp/lms.tgz",
        creates => "/var/www/$folder/$targetfolder/$targetfile",
        path    => '/bin:/usr/bin',
        user    => 'apache',
        require => [Package['tar'], Exec['download lms'], File["/var/www/$folder"]],
    }
  }
  apache::site {
    'localhost':
      docroot => "/var/www/$folder/$targetfolder",
  }
}
