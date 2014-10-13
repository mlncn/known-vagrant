known-vagrant
=============

A Vagrantfile and provisioning for running [Known](http://withknown.com/).

Install VirtualBox from https://www.virtualbox.org/ and Vagrant per http://www.vagrantup.com/ first.

Download this directory (from tarball is recommended) and name it whatever you want your project to be, e.g. 'example'.  Then change directory to it and run vagrant up.

E.g.:

`cd example`  
`vagrant up`

It will download a base Debian virtualbox (currently one also used for Agaric's Drupal projects but still pretty light weight) and provision it for Known (mostly, adding PHP Curl and setting up the database and file storage).

Offered by Agaric - http://agaric.coop - to the IndieWeb community (see http://indiewebcamp.com/ for more!).
