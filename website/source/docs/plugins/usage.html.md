---
page_title: "Plugin Usage - Plugins"
sidebar_current: "plugins-usage"
---

# Plugin Usage

Installing a plugin is easy, and shouldn't take more than a few seconds.

Please refer to the documentation of any plugin you plan on using for
more information on how to use it, but there is one common method for
installation and plugin activation.

~> **Warning!** 3rd party plugins can introduce instabilities into Vagrant due
to the nature of them being written by non-core users.

## Installation

Plugins are installed using `vagrant plugin install`:

```shell
$ vagrant plugin install vagrant-example-plugin
...
```

Once a plugin is installed, it will automatically be loaded by Vagrant.
Plugins which cannot be loaded shouldn't crash Vagrant. Instead,
Vagrant will show an error message that a plugin failed to load.

## Usage

Once a plugin is installed, you should refer to the plugin's documentation
to see exactly how to use it. Plugins which add commands should be instantly
available via `vagrant`, provisioners should be available via
`config.vm.provision`, etc.

**Note:** In the future, the `vagrant plugin` command will include a
subcommand that will document the components that each plugin installs.

## Updating

Plugins can be updated by running `vagrant plugin update`. This will
update every installed plugin to the latest version. You can update a
specific plugin by calling `vagrant plugin update NAME`. Vagrant will
output what plugins were updated and to what version.

To determine the changes in a specific version of a plugin, refer to
the plugin's homepage (usually a GitHub page or similar). It is the
plugin author's responsibility to provide a change log if he or she
chooses to.

## Uninstallation

Uninstalling a plugin is as easy as installing it. Just use the
`vagrant plugin uninstall` command and the plugin will be removed. Example:

```shell
$ vagrant plugin uninstall vagrant-example-plugin
...
```

## Listing Plugins

To view what plugins are installed into your Vagrant environment at
any time, use the `vagrant plugin list` command. This will list the plugins
that are installed along with their version.