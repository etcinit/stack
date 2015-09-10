firefox:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:firefox', 'firefox') }}
