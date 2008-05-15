textmate
========

A binary that provides package management for TextMate.

Usage
=====

`textmate [COMMAND] [*PARAMS]`

Textmate bundles are automatically reloaded after install or uninstall operations.

`textmate remote [SEARCH]`
------------------------

List all of the available bundles in the remote repository that have a substring `search`. By default, list all bundles.

`textmate list`
--------------------

List all of the bundles that are installed on the local system.

`textmate install NAME [SOURCE]`
-----------------------

Installs a bundle from the remote repository. SOURCE filters known remote bundle locations. 

`textmate uninstall NAME`
-------------------------

Uninstalls a bundle from the local repository.
