include:
    - unix.editors
    - unix.golang
    - unix.php

git:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:git', 'git') }}

curl:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:curl', 'curl') }}

wget:
    pkg.installed:
        - name: {{ salt['pillar.get']('packages:wget', 'wget') }}
