# coursera-genomic-tools
Software needed to complete Coursera's "Command Line Tools for Genomic Data Science"

This creates the environment that's needed to complete the course assignments.  The image was built for people who can't install VirtualBox VM (the course provides virtual appliance image file).

# Setup
If you are under firewall and require proxy server, edit docker-compose.yml file first.

Otherwise, simply build and run docker-compose.

```bash
docker-compose build
docker-compose run
```

# Usage

Coursera course provides data files for assignments. Download and expand in Data/ directory.


Then bash into the container to do your homework.

```bash
docker exec -it <image_name> bash
```


