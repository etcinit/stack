php:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:php', 'php') }}

{% if salt['pillar.get']('packages:composer', 'composer') %}
composer:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:composer', 'composer') }}
        - require:
            - pkg: {{ salt['pillar.get']('packages:php', 'php') }}
{% endif %}
