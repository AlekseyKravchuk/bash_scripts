#!/usr/bin/env bash
find * -maxdepth 0 -name 'folder_name' -prune -o -exec rm -rf '{}' ';'
