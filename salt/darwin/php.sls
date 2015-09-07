php:
  pkg.installed:
    - name: php56

composer:
  pkg.installed:
    - name: composer
    - require:
      - pkg: php56
