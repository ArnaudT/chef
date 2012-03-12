Description
===========

Chef cookbook for the Play 2.0 framework.

Play 2.0 is a high-productivity Java and Scala web application framework that integrates the components and APIs you need for modern web application development.

Play is based on a lightweight, stateless, web-friendly architecture and features predictable and minimal resource consumption (CPU, memory, threads) for highly-scalable applications thanks to its reactive model, based on Iteratee IO.


http://www.playframework.org/2.0
https://github.com/playframework/Play20/wiki

Changes
=======

## v0.1:

* Released to github

Requirements
============

## Platform:

* Debian/Ubuntu
* ArchLinux

## Cookbooks:

* java

Attributes
==========

include_recipe "play2"

Usage
=====

This cookbook installs play2 core packages.

    include_recipe "play2"

This creates the directory /srv/play2.
Play 2.0 framework shell is available via /srv/play2/play command