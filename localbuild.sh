#!/bin/bash
DOCKER_TAG=${DOCKER_TAG:-latest}
docker build -t elek/storm:$DOCKER_TAG storm
docker build -t elek/storm-nimbus:$DOCKER_TAG storm-nimbus
docker build -t elek/storm-supervisor:$DOCKER_TAG storm-supervisor
docker build -t elek/storm-ui:$DOCKER_TAG storm-ui
