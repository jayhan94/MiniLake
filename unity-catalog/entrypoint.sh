#!/bin/sh

set -e

bin/start-uc-server &

sleep 3

until (bin/uc catalog create --name unity) do echo '...waiting...' && sleep 1; done;
bin/uc schema create --catalog unity --name default

tail -f /dev/null