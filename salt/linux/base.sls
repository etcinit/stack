include:
    - unix.base
    - linux.graphical.base
    - linux.java
    {% if grains['os_family'] == 'RedHat' %}
    - linux.fedora.fusion
    {% endif %}
