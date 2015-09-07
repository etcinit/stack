# stack

## Defaults

- Username is `etcinit`
- Machine names: `apollo` for Windows

## Getting started

### Windows

```sh
.\salt-call.bat --local --file-root=C:/srv/salt state.highstate
```

### OSX

```sh
brew install saltstack
sudo salt-call --local --file-root=./salt state.highstate
```

### Linux

TODO
