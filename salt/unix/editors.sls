vim:
  pkg.installed:
    - name: {{ salt['pillar.get']('packages:vim', 'vim') }}
