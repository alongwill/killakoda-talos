#!/bin/bash
# Runs while the intro is shown: install talosctl.
curl -sL https://talos.dev/install | sh > /var/log/talosctl-install.log 2>&1
touch /tmp/talosctl-ready
