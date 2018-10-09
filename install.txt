#!/bin/bash -e

sfctl application upload --path HelloWorldPublisher --show-progress
sfctl application provision --application-type-build-path HelloWorldPublisher
sfctl application create --app-name fabric:/HelloWorldPublisher --app-type HelloWorldPublisherType --app-version 1.0.0
#sfctl service create --app-id HelloWorldPublisher --name fabric:/HelloWorldPublisher/ContainerService --service-type HelloPublisherType --stateless --instance-count 1 --singleton-scheme
