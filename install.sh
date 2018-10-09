#!/bin/bash -e

sfctl application upload --path HelloWorldPublisher_anu --show-progress
sfctl application provision --application-type-build-path HelloWorldPublisher_anu
sfctl application create --app-name fabric:/HelloWorldPublisher_anu --app-type HelloWorldPublisherType --app-version 1.0.0
#sfctl service create --app-id HelloWorldPublisher --name fabric:/HelloWorldPublisher/ContainerService --service-type HelloPublisherType --stateless --instance-count 1 --singleton-scheme
