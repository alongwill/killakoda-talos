# Create the cluster

Create a Talos cluster (1 control plane + 1 worker) as Docker containers:

```
talosctl cluster create docker --workers 1
```{{exec}}

This takes a few minutes. When it finishes, check the containers:

```
docker ps --format '{{.Names}}'
```{{exec}}
