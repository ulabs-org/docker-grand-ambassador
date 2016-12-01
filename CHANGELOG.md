v1.0
- Fixed issue with proxy package (get it from docker/docker v1.11.2)
- Minimize container

v0.9
- Properly recover from proxied container being removed/re-created
- Optionally (and on by default) wait for the container with the given name to be created/started instead of exiting.
- Extract dockerclient to separate repo
