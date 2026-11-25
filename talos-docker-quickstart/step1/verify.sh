#!/bin/bash
[ "$(docker ps --format '{{.Names}}' | grep -c talos)" -ge 2 ]
