

class media {
	include media::videoediting
	include media::audiorip
}

class media::audiorip {
	package { "abcde": ensure => installed }
	package { "lame": ensure => installed }
	package { "id3v2": ensure => installed }
}

class media::videoediting {
	package { "openshot": ensure => installed }
}
