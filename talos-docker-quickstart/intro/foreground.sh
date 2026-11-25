#!/bin/bash
echo "Installing talosctl..."
while [ ! -f /tmp/talosctl-ready ]; do sleep 1; done
clear
talosctl version --client
echo "talosctl is ready."
