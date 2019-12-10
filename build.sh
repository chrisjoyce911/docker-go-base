#!/bin/sh

set -eu
SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"
PROJ_DIR="$SCRIPT_DIR"
PROJECT_NAME="docker-go-base"
GOPROXY="direct"
cd "$PROJ_DIR"

docker build -t chrisjoyce911/go-base -f Dockerfile .
