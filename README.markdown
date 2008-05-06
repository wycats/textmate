textmate
========

A binary that provides package management for TextMate.

Usage
=====

`textmate [COMMAND] [*PARAMS]`

Textmate bundles are automatically reloaded after install or uninstall operations.

`textmate list [SEARCH]`
------------------------

List all of the available bundles in the remote repository that have a substring `search`. By default, list all bundles.

`textmate installed`
--------------------

List all of the bundles that are installed on the local system.

`textmate install NAME`
-----------------------

Installs a bundle from the remote repository.

`textmate uninstall NAME`
-------------------------

Uninstalls a bundle from the local repository.
