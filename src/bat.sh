#!/bin/sh
envstat | awk '/battery percent/ { printf("%d%%", $3) }'
