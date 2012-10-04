class zabbix_agent {
	class { 'puppetzabbixagent':
		zabbix_server	=> '127.0.0.1,184.75.248.121,10.100.0.31',
	}
	
	case $operatingsystem {
      		Ubuntu: {
			exec { "sed -i 's#DIR=/var/run/zabbix$#DIR=/var/run/zabbix-agent#' /etc/init.d/zabbix-agent":
				path => "/usr/bin:/usr/sbin:/bin",
				onlyif => "grep -E 'DIR=/var/run/zabbix$' /etc/init.d/zabbix-agent",
				notify => Service["zabbix-agent"]
			}
		}
	}
}
