# textmate

A binary that provides package management for TextMate.

# Usage

`textmate [COMMAND] [*PARAMS]`

Textmate bundles are automatically reloaded after install or uninstall operations.

## `textmate remote [SEARCH]`

List all of the available bundles in the remote repository, optionally filtering by `search`.

## `textmate list [SEARCH]`

List all of the bundles that are installed on the local system, optionally filtering by `search`.

## `textmate install NAME [SOURCE]`

Installs a bundle from the remote repository. SOURCE filters known remote bundle locations.
For example, if you want to install the "Ruby on Rails" bundle off GitHub, you'd type the following:

`textmate install "Ruby on Rails" GitHub`

Available remote bundle locations are:
* Macromates Trunk
* Macromates Review
* GitHub

## `textmate uninstall NAME`

Uninstalls a bundle from the local repository.
