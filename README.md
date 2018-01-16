# Requirements

* Docker installed
* Sufficient space available

# Building

```
sudo docker build -t igaads .
```

# Example of use

```
sudo docker run -it --rm igaads
```

Warning:
Option '--rm' makes the container disappear after exit.
You can save the running container using 'docker commit' command.

# Example of fetching data

* Forward port 8000 to host machine

```
sudo docker run -p 8000:8000 -it --rm igaads
```

* Prepare the data

```
tar cf output.tar *.data
```

* Run http server inside the container

```
python -m SimpleHTTPServer
```

* The data will be available via HTTP at port 8000 of host machine
