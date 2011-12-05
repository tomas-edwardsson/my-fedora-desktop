
class video {
	include repos
	# Lots of codecs and video players
	package { ["mplayer", "vlc", "libdvdcss", "gstreamer-plugins-ugly", "gstreamer-plugins-good", "gstreamer-plugins-bad-nonfree", "gstreamer-plugins-bad-free-extras", "gstreamer-plugins-bad-free", "gstreamer-plugins-bad", "gstreamer-ffmpeg"]:
		ensure => installed, 
		subscribe => Augeas['atrpms-decss-only'],
	}
}
