# Workflow for running this project 


## Jenkins
- Created a jenkins container using `Dockerfile` in `Jenkins` folder of this repo, installed the required plugins and set a user login.
- Jenkins container runs on `localhost:3000`
- This Jenkins container have access to docker socket of host OS, it can control the docker containers and images of host OS. For this, I used `-v /var/run/docker.sock:/var/run/docker.sock` flag in docker run command during container launch.

## Spring-Boot App
- Created a simple 'hello world' app on java for the first time by following tutorials online. Runs on`localhost:3333`.
- Wrote `Dockerfile` to create image using the `.jar` file of the project.
- After every change in the code , run `mvn clean install` and push the changes to github.

## Jenkins server

- Created a webhook and poll scm for github pushes to this repo.
- The shell script in `build.sh` file of this repo was run in the executable shell of jenkins server. See the screenshots.
- This Jenkins server container running on `port:3000` launches our java app container on `port:3333` after every github push and also pushes the image to `Dockerhub`. Go through the `build.sh` for more details.

## Screenshot:

![alt tag](https://github.com/N-dabas/springboot-app/blob/master/1.png)


![alt tag](https://github.com/N-dabas/springboot-app/blob/master/2.png)
