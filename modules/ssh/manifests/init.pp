
class ssh {
	
}

class ssh::server {
	augeas { "allow_wheel_ssh":
		context => "/files/etc/ssh/sshd_config",
		onlyif => "match AllowGroups/*[.='wheel'] size == 0",
		changes => "set AllowGroups/10000 wheel",
		notify => Service['sshd'],
	}
	service { "sshd":
		enable => true
	}
}
