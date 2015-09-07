include:
  - common.nodejs

nodejs:
  chocolatey.install:
    - require:
      - sls: common.nodejs
