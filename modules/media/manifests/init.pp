

class media {
	include media::videoediting
}


class media::videoediting {
	package { "openshot": ensure => installed }
}
