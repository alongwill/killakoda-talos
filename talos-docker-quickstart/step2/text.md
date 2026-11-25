# Inspect cluster members

Talos nodes register themselves with the discovery service. List them,
pointing `talosctl` at the node's IP:

```
talosctl get members --nodes 10.5.0.2
```{{exec}}

You should see one member, the `controlplane` node.

For more detail:

```
talosctl get members --nodes 10.5.0.2 -o yaml
```{{exec}}
