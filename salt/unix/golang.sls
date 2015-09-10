golang:
  pkg.installed:
    - name: {{ salt['pillar.get']('packages:golang', 'golang') }}
