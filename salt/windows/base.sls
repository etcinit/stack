include:
  - windows.browsers
  - windows.development
  - windows.editors
  - windows.gaming
  - windows.golang
  - windows.media
  - windows.paths
  - windows.php
  - windows.python
  - windows.tools

system:
  system.computer_name:
    - name: apollo
  win_update.installed:
    - categories:
      - 'Critical Updates'
      - 'Security Updates'
      - driver
  win_dns_client.dns_exists:
    - replace: True #remove any servers not in the "servers" list
    - servers:
      - 8.8.8.8
      - 8.8.4.4

chocolatey:
  module.run:
    - name: chocolatey.bootstrap

all:
  require:
    - sls: windows.browsers
    - sls: windows.development
    - sls: windows.editors
    - sls: windows.gaming
    - sls: windows.golang
    - sls: windows.media
    - sls: windows.php
    - sls: windows.tools
    - sls: windows.paths
