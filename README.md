# docker-test-server

## Overview

Handy small web-server for test purposes.
All docker commands are handled via `make` for ease-of-use.

The finalized image can either be build manually (via the `make build` command) or pulled from `Docker Hub` as shown below:

    docker pull thucon/docker-test-server

## Commands

Build image

    make

    # or

    make build

Start service

    make run

Stop service

    make stop

Jump into running service

    make shell

Check logs (press `ctrl+c` to exit)

    make logs

Clean/Remove container

    make clean