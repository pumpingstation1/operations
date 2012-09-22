class global_users {
	puppetusers::localuser {
		'rhys':
		comment => "Rhys Rhaven, Tophat Extrodinare",
		ensure => 'present',
		uid => '7001',
		gid => '7001',
		groups => 'sudo',
		home => '/home/rhys',
		managehome => true,
		password => '$6$hbxnQYFI$X2eeU/vo37GgG4h.bUCfRFmIgWy9xy84LYeTUdE1FcyL4U4jNmkN1.LuHVoSGtJ8A1OIx4cIk/Nx5srpg2mRX0',
		shell => '/bin/bash',
		system => false,
	}
	puppetusers::localuser {
		'ubuntu':
		comment => "Default Ubuntu user",
		ensure => 'absent'
	}
}
