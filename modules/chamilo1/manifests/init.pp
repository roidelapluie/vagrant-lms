class chamilo1 {
  class {
    'lms':
      source       => 'http://chamilo.googlecode.com/files/chamilo-1.8.8.4.zip',
      folder       => 'chamilo1',
      targetfolder => 'chamilo-1.8.8.4',
      method       => 'zip',
  }
  php::module{'mysql':}
  php::module{'mbstring':}
  php::module{'gd':}
  php::module{'intl':}
  php::module{'ldap':}
  php::option {'session.cookie_httponly': ensure => 'on'; }
}
