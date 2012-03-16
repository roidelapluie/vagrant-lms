node default {
  include apache
  include site
  include php
  class { 'mysql':
    rootpass => 'password',
  }
  mysql::definitions::user {
    'user':
      pass => 'password',
  }
}
node dokeos2-vm inherits default {
  include dokeos2
}
node claroline-vm inherits default {
  mysql::definitions::db {
    'claroline':
      user => 'user',
  }
  include claroline
}
node chamilo-vm inherits default {
  mysql::definitions::db {
    'chamilo':
      user => 'user',
  }
}
node chamilo1-vm inherits chamilo-vm {
  include chamilo1
}
node chamilo2-vm inherits chamilo-vm {
  include chamilo2
}
node moodle-vm inherits default {
  mysql::definitions::db {
    'moodle':
      user => 'user',
  }
  include moodle
}
