# Inspect cluster members

Talos nodes discover each other through the discovery service. List them:

```
talosctl get members
```{{exec}}

You should see two members, one `controlplane` and one `worker`.

For more detail:

```
talosctl get members -o yaml
```{{exec}}
