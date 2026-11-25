#!/bin/bash
[ "$(talosctl get members 2>/dev/null | grep -c -E 'controlplane|worker')" -ge 2 ]
