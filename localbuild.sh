#!/bin/bash
DOCKER_TAG=${DOCKER_TAG:-latest}
docker build -t elek/storm-base:$DOCKER_TAG storm-base
docker build -t elek/storm-nimbus:$DOCKER_TAG storm-nimbus
docker build -t elek/storm-supervisor:$DOCKER_TAG storm-supervisor
docker build -t elek/storm-ui:$DOCKER_TAG storm-ui
