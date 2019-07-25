#!/bin/bash -e

export APP_NAME="test-app"
export APP_REPLICAS="1"

export APP_PORT=8081

export APP_CPU_REQUEST=100m
export APP_MEMORY_REQUEST=64Mi
export APP_CPU_LIMIT=500m
export APP_MEMORY_LIMIT=256Mi
