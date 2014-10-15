Vagrant environment for Known
=============================

A Vagrantfile and provisioning for running [Known](http://withknown.com/).

This Vagrant setup can replace the [installation instructions](http://docs.withknown.com/en/latest/install/instructions.html) but that remains the recommended reference.

Prerequisites
-------------

  1. Install [VirtualBox](https://www.virtualbox.org/)
  2. Install [Vagrant](http://www.vagrantup.com/) from their [downloads page](http://www.vagrantup.com/downloads.html)

Installation
------------

  1. Download [this project](https://github.com/mlncn/known-vagrant) (from [tarball is recommended](https://github.com/mlncn/known-vagrant/archive/master.zip)) and name it whatever you want your project to be, e.g. 'known'.  Then change directory to it.
  
    `git archive --remote git@github.com:mlncn/known-vagrant.git master | tar -xvf - -C known`  
    `cd known`

  2. For a development install (latest from the [Known repository](https://github.com/idno/idno)) you don't have to do anything; the bootstrap script that will run the first time you `vagrant up` will take care of fetching it and placing it in a 'web' directory.  To install a stable version, toward the bottom in the "Run Known on your own server" section use the download link and extract it into a new 'web' directory.
  
  3. Run the vagrant up command:

    `vagrant up`

    This will take a while, so now is a good time to get yourself a light breakfast or read the [Known documentation](http://docs.withknown.com/en/latest/developers/index.html).  Vagrant will download a base Debian virtualbox (courtesy the Chef project but it is a plain Debian install) and provision it for Known (mostly, adding the Apache/MySQL/PHP5 part of the LAMP stack with PHP Curl).  It also will set up the database and file storage (as a symlink so it resides only in the VM) and a configuration file to match, so you won't need to do any of this setup.

  4.  Visit your site.  In your `/etc/hosts` (or equivalent) file you can set whatever more easily remembered name you like (e.g. 'myknownsite.test') to use the IP address defined in the Vagrantfile, `192.168.33.10`— or you can just visit that IP address directly:

    [`http://192.168.33.10`](http://192.168.33.10)

Credit
------

Offered by [Agaric](http://agaric.coop) to the [IndieWeb community](http://indiewebcamp.com/).