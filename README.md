# Py_docker
US Foods Generic Docker setup.

# Motivation
I had a heck of a time figuring this all out.  So I'm hoping this will be a great starting point for future projects.  I started with the following libraries: numpy, pandas, plotly, seaborn, jupyter, and sklearn. 

# Tech/framework used
-Docker
-Python 3.6

# Installation
1. Install Docker (if you have not already)
	-https://docs.docker.com/install/ 
2. Make sure docker is running and you're signed in.
3. Clone this repo to your local machine
4. Open your terminal and navigate into the folder py_docker (relative paths require this)
```
cd projects/ds-knowledge/huddleup/docker/py_docker/
```
4. Run the following.  It will take awhile, be patient, it's worth it! You may not need to build (depending on your docker version)
```
docker-compose up --build
```
5. Open localhost:8888 in a web browser.
6. Be amazed by this miracle and send Alex a thank you ;)

# Tests


# How to use?
You can use as-is for most things.  Issues can occur if your environment.yml requires other libraries.  Future versions will create a better, more generic setup.  Note that I exported my environment with the --no-builds flag due to cross-system issues.  I also needed to delete the libfortran library (this will get installed as the appropriate dependency).

Each time you start up the container just run
```
docker-compose up
```

To stop the container use ctrl c.  

You can run the container in detached mode
```
docker-compose up -d
```
BUT BEWARE that you will need to shut it down later and we don't want to forget
```
docker-compose down
```

# Credits
Lukasz Filipek


<3 Alex Blohm <3