base:
  'os:Windows':
    - match: grain
    - common.timezone
    - common.home
    - windows.base
  'kernel:Darwin':
    - match: grain
    - common.timezone
    - common.home
    - darwin.base
  'kernel:Linux':
    - match: grain
    - common.timezone
    - common.home
    - linux.base
