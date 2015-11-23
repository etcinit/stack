jdk:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:jdk', 'java-jdk') }}
