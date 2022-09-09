# What is this?
This is a dockerfile which creates a custom image based on the parrotsec/security docker image to suit me. It adds some tools which are not directly available in the official image, a bit of rice, and tries to keep it a bit more up to date.
# Extra programs
- gobuster
- powershell
- updog
- zsh
# Other modifications
- zsh plugins to make life easier via antigen.zsh
- different prompt from the default parrot one

# On DockerHub
It can be pulled with tag p4df00t/azkaban:latest

# How to run
I recommend running this in the same way that the ParrotOS team does:
```sh
docker run -ti -rm --network host -v $PWD/work:/root/work p4df00t/azkaban:latest
```
# Disclaimers
1. You can expect this dockerfile to be a WIP forever. It will most likely be updated periodically when I feel like modifying stuff. 
2. The dockerfile can be used as is, as well as serve as a template for another person's personalized config.
