packages:
    {% if grains['os_family'] == 'RedHat' %}
    apache: httpd
    git: git
    golang: golang
    composer: composer
    php: php
    java-jdk: java-1.7.0-openjdk
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
