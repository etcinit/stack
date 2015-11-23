{% set main_username = salt['pillar.get']('users:main') %}
{% set main_group = salt['pillar.get']('users:mainGroup') %}
{% set main_user = salt['user.info'](main_username) %}

{{ main_user.home + "/.ssh"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/.bin"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/.vim"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/.vim/bundle"}}:
    git.latest:
        - name: git@github.com:etcinit/bundle.git
        - rev: master
        - target: {{ main_user.home + "/.vim/bundle" }}
        - user: {{ main_user.name }}
        - submodules: true
        - require:
            - pkg: git
            - ssh_known_hosts: github.com

{{ main_user.home + "/.vimrc"}}:
    file.symlink:
        - target: {{ main_user.home + "/.vim/bundle/.vimrc"}}
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - requires:
            - pkg: vim
            - git: git@github.com:etcinit/bundle.git

{{ main_user.home + "/go"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/src"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/src/github.com"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/src/bitbucket.org"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/Downloads"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []

{{ main_user.home + "/Dropbox"}}:
    file.directory:
        - user: {{ main_user.name }}
        - group: {{ main_group }}
        - recurse: []
