class test {

    file { "/tmp/test.log":
             ensure => file,
             owner => "hamsta-1",
             mode => 0644,
             content => "sure you wanna be with me, Ive nothing to give.."
    }

    package { "perl":
              ensure => present,
    }

}

