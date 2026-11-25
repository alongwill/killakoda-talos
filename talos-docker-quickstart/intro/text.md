# Talos Linux in Docker

Talos Linux is an immutable, API-managed OS for Kubernetes. There is no SSH:
you manage it with `talosctl`.

In this scenario you will:

1. Create a single-node Talos cluster in Docker
2. List the cluster members with `talosctl get members`

`talosctl` is being installed in the background. Wait for "talosctl is ready" in the terminal.
