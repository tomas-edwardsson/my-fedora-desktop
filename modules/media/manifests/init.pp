

class media {
	include media::videoediting
	include media::audiorip
	include media::screencapture
	include media::photo::misc
}

class media::screencapture {
	package { "gtk-recordmydesktop": ensure => installed }
}

class media::photo::misc {
	#package { "exiftags": ensure => installed }
}

class media::audiorip {
	package { "abcde": ensure => installed }
	package { "lame": ensure => installed }
	package { "id3v2": ensure => installed }
}

class media::videoediting {
	package { "openshot": ensure => installed }
}
