#!/bin/bash
# Runs while the intro is shown: install a pinned talosctl.
# Pinned to v1.13.x on purpose. Talos v1.14+ passes overlayfs "lowerdir+" by file
# descriptor when building /etc, which needs a newer kernel than Killercoda's
# 6.8 (node fails with "FSCONFIG_SET_FD failed: bad file descriptor").
# `talosctl cluster create docker` pulls the image matching this client version,
# so pinning talosctl pins Talos. Revisit when Killercoda's kernel is newer.
TALOS_VERSION=v1.13.12
curl -sL -o /usr/local/bin/talosctl \
  "https://github.com/siderolabs/talos/releases/download/${TALOS_VERSION}/talosctl-linux-amd64"
chmod +x /usr/local/bin/talosctl
touch /tmp/talosctl-ready
