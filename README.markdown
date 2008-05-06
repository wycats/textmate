textmate
========

A binary that provides package management for TextMate.

Usage
=====

textmate [command] [*params]

Textmate bundles are automatically reloaded after install or uninstall operations.

textmate list [search]
---------------------

List all of the available bundles in the remote repository that have a substring `search`. By default, list all bundles.

textmate installed
------------------

List all of the bundles that are installed on the local system.

textmate install [name]
-----------------------

Installs a bundle from the remote repository.

textmate uninstall [name]
-------------------------

Uninstalls a bundle from the local repository.
