jdk:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:java-jdk', 'java-jdk') }}
