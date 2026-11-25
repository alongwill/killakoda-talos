# Create the cluster

Create a single-node Talos cluster as a Docker container. This VM has one CPU,
so the node gets half of it:

```
talosctl cluster create docker --workers 0 --cpus-controlplanes 0.5
```{{exec}}

This takes a few minutes. When it finishes, check the container:

```
docker ps --format '{{.Names}}'
```{{exec}}

<!--
Maintainer note: the Talos version is set by the installed talosctl (v1.13.12,
see intro/background.sh); `cluster create docker` has no --talos-version flag and
pulls the image matching the client. v1.14+ does not boot on Killercoda: it needs
a newer kernel than the VMs' 6.8 (fd-based overlayfs "lowerdir+" for /etc).
Error seen: "failed to set up /etc overlay ... FSCONFIG_SET_FD failed: bad file
descriptor". Revisit when Killercoda's kernel is newer.
-->
