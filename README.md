Why?
=========================

my-fedora-desktop are all the modifications I want to preserve to the stock
Fedora desktop. Installs stuff like codecs, nvidia drivers, programming tools.

This means I can do a clean install of Fedora with my setup very easily.

Some modules might be useful to you, others, not so much.

Install
=========================
Just clone, edit my-fedora-desktop.pp and the ./runit.sh :-)

Clone
-------------------------
Install git and clone the repository
`
yum -y install git
git clone git://github.com/tomas-edwardsson/my-fedora-desktop.git
`

Edit my-fedora-desktop.pp
-------------------------
Comment the modules you do not want/need.

Run it!
-------------------------
This will run the manifest, the run time can be half an hour depending on
your network connection, speed of machine and which modules you selected.

`./runit.sh`
 
