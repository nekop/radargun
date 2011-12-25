#!/bin/sh

rm -rf target
mvn clean install -Dmaven.test.skip
date
(cd target/distribution/RadarGun-1.1.0-SNAPSHOT; sh bin/local.sh)
date
