
# My self spying software, take screenshots every 5 minutes
# see http://tommi.org/2008/05/screenshot-script-for-xorg-linux/
class watewasdo {
	# For xwd
	package { "xorg-x11-apps": ensure => installed }

	package { "gocr": ensure => installed }
	
	cron { "screenshot.sh":
		command => '/home/tommi/watewasdo/screenshot.sh',
		minute => '*/5',
		hour => ['7-22'],
		user => tommi,
	}
}
