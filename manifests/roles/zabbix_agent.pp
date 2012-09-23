class zabbix_agent {
	class { 'puppetzabbixagent':
		zabbix_server	=> '184.75.248.121,10.100.0.31',
	}
}
