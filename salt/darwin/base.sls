{% set os = salt['grains.get']('os', '') %}

include:
    - unix.base
    - unix.editors
    - darwin.browsers
    - darwin.tools
{% if os == "MacOS" %}
    - darwin.osx.base
{% endif %}

'brew-cask':
    pkg.installed: []
