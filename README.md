# stack

This repository contains a SaltStack setup for my personal machines. Currently,
the following operating systems are supported:

- Fedora 23/22
- OSX
- Windows (8 and up?)

## Getting started

Before running the salt minion, make sure to customize the configuration files
to meet your needs.

Default configurations can be found and modified at 'pillar/' on this
repository. Running the minion without any changes will use the following:
- Main Username: `etcinit`
- Default group: `etcinit`

### Linux

Currently, Fedora is the only distribution supported. However, the state files
are organized such that it is possible to add support for other distributions
such as Ubuntu and Debian.

#### Fedora

1. Install the Salt minion and run it:
```sh
sudo dnf install salt-minion
sudo salt-call --local --file-root=./salt --pillar-root=./pillar state.highstate
```

### Windows

1. Install SaltStack from the installer on their website.
2. Run the minion:

```sh
.\salt-call.bat --local --file-root=C:/srv/salt state.highstate
```

### OSX

1. Make sure you have `brew` installed.
2. Run the minion:

```sh
brew install saltstack
sudo salt-call --local --file-root=./salt --pillar-root=./pillar state.highstate
```
