base:
  'os:Windows':
    - match: grain
    - common.timezone
    - common.home
    - windows.base
  'os:MacOS':
    - match: grain
    - common.timezone
    - common.home
    - darwin.base
