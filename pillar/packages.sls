packages:
    {% if grains['os_family'] == 'RedHat' %}
    apache: httpd
    git: git
    golang: golang
    composer: composer
    php-stable: php
    {% elif grains['os_family'] == 'Debian' %}
    apache: apache2
    git: git-core
    golang: golang
    php-stable: php5-cli
    {% elif grains['kernel'] == 'Darwin' %}
    apache: apache
    git: git
    golang: go
    php-stable: php56
    composer: composer
    {% endif %}