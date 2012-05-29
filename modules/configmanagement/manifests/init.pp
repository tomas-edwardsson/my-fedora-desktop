

class configmanagement {
	# Need this for puppet modificiations of file contents
	package { "augeas": ensure => installed }

	class { "configmanagement::hiera": }
}

class configmanagement::hiera () {
	package { "hiera":
		provider => gem,
	}
	package { "hiera-puppet":
		provider => gem,
		require => Package['hiera'],
	}
}


