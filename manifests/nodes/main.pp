node "repo.pumpingstationone.org" {
	include basenode
}

node /^(.+).dev.pumpingstationone.org/ {
	include basenode
}

node default {
	include basenode
	include global_users
	include zabbix_agent
}
