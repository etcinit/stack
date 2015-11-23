base:
  'os:Windows':
    - match: grain
    - common.timezone
    - common.home
    - windows.base
    - common.git
  'kernel:Darwin':
    - match: grain
    - common.timezone
    - common.home
    - darwin.base
    - common.git
  'kernel:Linux':
    - match: grain
    - common.timezone
    - common.home
    - linux.base
    - common.git
