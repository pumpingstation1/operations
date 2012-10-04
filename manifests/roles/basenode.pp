class basenode {
    include ntp
    package { "screen": 
	ensure => "installed" 
    }
    package { "vim":
        ensure => "installed"
    }
}

class { 'ntp':
    servers => hiera('ntp_servers')
}

