class basenode {
    include ntp
}

class { 'ntp':
    servers => hiera('ntp_servers')
}

