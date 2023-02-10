tag: terminal
and tag: user.docker
-
# this file is for both docker and docker-compose in the console

# it is assumed a sudo is necessary
docker: "sudo docker "

docker list: "sudo docker ps \n"
docker images: "sudo docker images \n"
docker run: "sudo docker run"
docker pull: "sudo docker pull "
docker login: "sudo docker login "
docker remove force: "sudo docker rm -f "
docker (build | built): "sudo docker build "

docker bash:
    "sudo docker exec -it  bash"
    key(left)
    repeat(4)

# for images where there is no bash but sh exists:
docker shell:
    "sudo docker exec -it  sh"
    key(left)
    repeat(2)
