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

  1. Download [this project]() (from tarball is recommended) and name it whatever you want your project to be, e.g. 'example'.

For a development (latest Then change directory to it and run vagrant up.

E.g.:

`cd example`  
`vagrant up`

It will download a base Debian virtualbox (currently one also used for Agaric's Drupal projects but still pretty light weight) and provision it for Known (mostly, adding PHP Curl and setting up the database and file storage).

Offered by [Agaric](http://agaric.coop) to the [IndieWeb community](http://indiewebcamp.com/).
