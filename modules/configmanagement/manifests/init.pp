

class configmanagement {
	# Need this for puppet modificiations of file contents
	package { "augeas": ensure => installed }
}
