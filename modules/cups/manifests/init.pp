class cups {
	package { "cups": ensure => installed }

	service { "cups":
		enable => true,
		ensure => running,
		subscribe => [ Package['cups'], File['/etc/cups/cupsd.conf']  ],
	}

	file { "/etc/cups/cupsd.conf":
		mode => 0640,
		owner => root,
		group => lp,
		content => template('cups/cupsd.conf.erb'),
		subscribe => Package['cups'],
	}
}
