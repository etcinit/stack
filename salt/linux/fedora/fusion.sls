rpm-fusion:
    cmd.run:
      - name: "bash -c 'dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'"
      - unless: dnf list rpmfusion-free-release.noarch && dnf list rpmfusion-nonfree-release.noarch

steam.i686:
    pkg.installed:
      - required:
          - cmd: rpm-fusion

dropbox:
    pkg.installed:
      - required:
          - cmd: rpm-fusion

nautilus-dropbox:
    pkg.installed:
      - required:
          - cmd: rpm-fusion

gstreamer-plugins-bad-nonfree:
    pkg.installed:
      - required:
          - cmd: rpm-fusion

gstreamer-plugins-bad:
    pkg.installed:
      - required:
          - cmd: rpm-fusion

gstreamer-plugins-ugly:
    pkg.installed:
      - required:
          - cmd: rpm-fusion
