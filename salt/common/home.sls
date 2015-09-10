'~/.ssh':
    file.directory:
        - user: {{ salt['pillar.get']('users:main') }}
        - recurse: []

'~/bin':
    file.directory:
        - user: {{ salt['pillar.get']('users:main') }}
        - recurse: []

'~/.vim':
    file.directory:
        - recurse: []

'~/go':
    file.directory:
        - recurse: []

'~/projects':
    file.directory:
        - recurse: []

'~/projects/github.com':
    file.directory:
        - recurse: []

'~/projects/bitbucket.org':
    file.directory:
        - recurse: []

'~/Downloads':
    file.directory:
        - recurse: []

'~/Dropbox':
    file.directory:
        - recurse: []
