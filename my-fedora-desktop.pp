
$cups_poll_servers = ['']

if ($cups_poll_servers) {
        include cups
}
# Just installs the autofs package, for me I want the /net/<hostname> for nfs
include autofs

# Install various repos
include repos

# I use NVidia cards
include display::nvidia

# Chat programs, xchat, pidgin
include chat

# Add some bluetooth capability, specifically for sending and receiving files
include bluetooth

# Video players and codecs
include video


include configmanagement
include debugutils

# Video/Photo management stuff
include media

include diskutils
include gnome3
include flash
include mindmanager
include remote
include programming
include watewasdo
include finance
include virtualization
include bootdisk
include fedorapkgr


