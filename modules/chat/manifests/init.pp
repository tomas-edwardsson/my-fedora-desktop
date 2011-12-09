
class chat {
	package { "xchat": ensure => installed }
	package { ["gnome-shell-extension-pidgin", "pidgin-otr", "pidgin-sipe", "pidgin"]:
		ensure => installed
	}
}
