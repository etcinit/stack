packages:
    {% if grains['os_family'] == 'RedHat' %}
    apache: httpd
    git: git
    golang: golang
    composer: composer
    php: php
    jdk: 'java-1.8.0-openjdk'
    vim: 'vim-enhanced'
    {% elif grains['os_family'] == 'Debian' %}
    apache: apache2
    git: git-core
    golang: golang
    php: php5-cli
    {% elif grains['kernel'] == 'Darwin' %}
    apache: apache
    git: git
    golang: go
    php: php56
    composer: composer
    {% endif %}
