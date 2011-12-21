#!/bin/sh

mvn clean install -Dmaven.test.skip
(cd target/distribution/RadarGun-1.1.0-SNAPSHOT; sh bin/local.sh)
