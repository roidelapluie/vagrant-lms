define mysql::definitions::db (
  $user,
  $host = 'localhost',
  $perms = 'all'
){
  exec {
    "create_db_$name":
      command => "mysql -uroot -p$mysql::rootpass --default-character-set=utf8 -h \"$host\" \"create '$name'\"; mysql -uroot -p$mysql::rootpass -h \"$host\" -e \"grant $perms on $name.* to '$user'@'$host'\"",
      path    => '/usr/bin:/bin:/sbin',
      unless  => "mysql -uroot -p$mysql::rootpass -h \"$host\" -e 'use $name'",
      require => Mysql::Definitions::User[$user],
  }
}
