#!/bin/bash -e

sfctl application upload --path Deploy_HelloWorld --show-progress
sfctl application provision --application-type-build-path Deploy_HelloWorld
sfctl application create --app-name fabric:/Deploy_HelloWorld --app-type HelloWorldPublisherType --app-version 1.0.0
#sfctl service create --app-id HelloWorldPublisher --name fabric:/HelloWorldPublisher/ContainerService --service-type HelloPublisherType --stateless --instance-count 1 --singleton-scheme
