
class flash {
	# Need the adobe repo from repos
	include repos

	package { "flash-plugin": 
		ensure => installed,
		subscribe => Exec['install-adobe-linux'],
	}
}
