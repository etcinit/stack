include:
    - darwin.osx.editors
    - darwin.osx.security

defaults write NSGlobalDomain AppleInterfaceStyle Dark:
    cmd.run: []

defaults write -g AppleLocale en_US:
    cmd.run: []

alfred:
    pkg.installed:
        - name: Caskroom/cask/alfred

bartender:
    pkg.installed:
        - name: Caskroom/cask/bartender

dropbox:
    pkg.installed:
        - name: Caskroom/cask/dropbox

goofy:
    pkg.installed:
        - name: Caskroom/cask/goofy

slack:
    pkg.installed:
        - name: Caskroom/cask/slack

steam:
    pkg.installed:
        - name: Caskroom/cask/steam

transmit:
    pkg.installed:
        - name: Caskroom/cask/transmit

disable-spotlight:
    cmd.run:
        - name: sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
        - require:
            - pkg: Caskroom/cask/alfred
