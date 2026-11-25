#!/bin/bash
[ "$(talosctl get members --nodes 10.5.0.2 2>/dev/null | grep -c controlplane)" -ge 1 ]
