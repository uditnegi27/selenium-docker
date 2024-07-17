# Base image
FROM bellsoft/liberica-openjdk-alpine:22.0.1

#install jq
RUN apk add curl jq

# Workspace
WORKDIR /home/selenium-docker

# Add the required files
ADD target/docker-resources     ./
ADD runner.sh                   runner.sh

# Environment Variable
# BROWSER
# HUB_HOST
# TEST_SUITE
# THREAD_COUNT

# Run the test
#ENTRYPOINT java -cp 'libs/*' -Dselenium.grid.enabled=true \
#           -Dselenium.grid.hubHost=${HUB_HOST} -Dbrowser=${BROWSER} \
#           org.testng.TestNG -threadcount=${THREAD_COUNT} \
#           test-suites/${TEST_SUITE}

ENTRYPOINT sh runner.sh
