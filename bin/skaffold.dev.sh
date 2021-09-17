#!/bin/bash

skaffold dev --port-forward
### Cleanup cache
# $ skaffold dev --no-prune=false --cache-artifacts=false --port-forward