#!/bin/sh

release_ctl eval --mfa "Yachat.ReleaseTasks.migrate/1" --argv -- "$@"
