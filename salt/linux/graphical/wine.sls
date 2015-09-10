wine:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:wine', 'wine') }}
