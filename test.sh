#!/bin/bash

#  watch --interval 8 "curl -i localhost/inspect"
while sleep 0.5; do curl -k https://localhost/heartbeat/; done