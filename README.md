dot.files
=========

A collection of configuration files.

installrc
---------

This script symlinks files stored in the same directory as the script except for those that are obviously not configuration files like this README file as well as hidden files, among other things. A hackish way to disable symlinking for particular configuration files is to rename them to use uppercase characters exclusively.

TODO
----

The installrc script can be further improved to assemble configuration files specific to particular operating systems using some simple template language. Files specific to a particular OS can be distinguished with a naming scheme utilizing extensions like the following:

* el
* deb
* osx
