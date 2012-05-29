
class video {
	include repos
	include repos::atrpms
	# Lots of codecs and video players
	package { ["mplayer", "vlc", "libdvdcss", "gstreamer-plugins-ugly", "gstreamer-plugins-good", "gstreamer-plugins-bad-nonfree", "gstreamer-plugins-bad-free-extras", "gstreamer-plugins-bad-free", "gstreamer-plugins-bad", "gstreamer-ffmpeg"]:
		ensure => installed, 
		subscribe => Class['repos::atrpms'],
	}
}
