# Stop and Remove all docker processes.
# A good last ditch attempt, if docker won't let you start a container because one is already running, but docker reports it has no active containers running
killdockerwithfire() {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}