# Devops-project

## Host a static website in AWS cloud

**25/11/2021**

Analyzed the project and created a plan.
Created github account and a public repository for the project.
Downloaded Git on windows and practiced some commands (git config, git init, git status, git add, git commit, git log and git checkout)


Creating a github account: https://www.wikihow.com/Create-an-Account-on-GitHub


Creating a repository: https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository


Introduction to git:  https://youtu.be/-wGc24R3_eM

Static Vs Dynamic website: https://wpamelia.com/static-vs-dynamic-website/


**26/11/2021**

Launched an EC2 instance Amazon linux 2 t2.micro 10 GB storage.
Connected to the instance through putty and gitbash.
Installed NGINX.
Learning NGINX configuration.

EC2 Concept and creation: https://youtu.be/mreaE3pXnPs

Windows EC2 connection: https://youtu.be/YiB6Imicui4

Installing NGINX on Amazon Linux: https://youtu.be/leCZ7htfB_g

```Time spent: 5 hours```

**27/11/2021**

Downloaded static web content from site https://html5up.net and added it to s3 bucket.
Created IAM role for EC2 instance to interact with s3 and copied the content.
Configured NGINX.
Installed Ubuntu on Windows using WSL

Host a Static Webpage with Content from S3: https://medium.com/@KerrySheldon/ec2-exercise-1-3-host-a-static-webpage-with-content-from-s3-4496f1e642c2

Windows Subsystem for Linux: https://www.linux.com/news/how-get-started-using-wsl-windows-10/

NGINX configuration: https://www.netguru.com/blog/nginx-tutorial-basics-concepts

```Time spent: 6 hours```

**28/11/2021**

Assigned elastic IP to EC2

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html

https://youtu.be/h-yOoHbH_Dw

```Time spent: Half an hour```

**29/11/2021**

Understanding Git commands: git branch, git merge, git diff and git stash.

https://youtu.be/nXS-N7clo9E

```Time spent: 2 hours```

**30/11/2021**

Practiced git commands: git remote, git push and git clone.

https://youtu.be/w5JP-sjkWD0

Changed NGINX user.

https://fedingo.com/how-to-change-nginx-user/

Set permissions on website files  and directories.

https://www.casbay.com/guide/kb/change-permissions-using-find-command-2

Understanding server blocks to host multiple domains.

https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-on-centos-7

```Time spent: 6 hours```

**01/12/2021**

Started .gitignore file, understanding how to comment issues, sponsorship, gist, actions and project management.

https://youtu.be/N6869pvF9cc 

Understanding open source project and how to contribute to it.

https://youtu.be/aAyr8AiuYTo

Understanding what ansible is and how it works.

https://youtu.be/wgQ3rHFTM4E

```Time spent: 3 hours```

**02/12/2021**

Installed Ansible

https://www.coachdevops.com/2020/04/install-ansible-on-ubuntu-how-to-setup.html?m=1

https://thecodecloud.in/ansible-installation-configuration-amazon-linux-ec2-instance-aws/

Understanding YAML and ansible playbook.

https://www.youtube.com/watch?v=o9pT9cWzbnI

https://youtu.be/NHnJ8BtsFY0

```Time spent: 3 hours```

**04/12/2021**

Understanding Ansible configuration, commands, roles, templates and tags.

https://youtu.be/ChSCEXQHfI4

https://youtu.be/FHSNM5yAUm8

https://youtu.be/lRwGkO3PtB8

```Time spent: 2 hours```

**05/12/2021**

Launched an EC2 instance executing ansible playbook from an ec2 instance

```Time spent: 1 hour```

**06/12/2021**

Working on playbook

```Time spent: 2 hours```

**07/12/2021**

Trying to fix errors on nginx installation using ansible. Learning ansible

```Time spent: 4 hours```

**08/12/2021**

Set up AWS credentials locally using aws configure command. Created a new playbook adding vars and user_data to install nginx. Referred sample playbooks. Executed playbook to launch an EC2 instance with nginx installed and running.

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

https://docs.ansible.com/ansible/latest/collections/community/aws/ec2_launch_template_module.html

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

```Time spent: 3 hours```

**09/12/2021**

Added to bash script wget command to download static website zip file from S3 bucket and unzip command to unzip it. launched EC2 instance with the files downloaded and unzipped. Working on nginx configuration.

```Time spent: 4 hours```

**10/12/2021**

Hosted static website with nginx. Understanding docker.

https://youtu.be/rOTqprHv1YE

```Time spent: 2 hours```

**11/12/2021**

Understood the difference between containerization and virtualization. Learned about components of docker and how docker works. Installed docker. Created dockerhub account and explored docker images.  Worked on basic docker commands for images and containers. Understanding how to create and build dockerfile. 

https://youtube.com/playlist?list=PLhW3qG5bs-L99pQsZ74f-LC-tOEsBp2rK


```Time spent: 5 hours```

**12/12/2021**

Used docker-compose command to create and start containers.

https://youtu.be/HUpIoF_conA

Followed the steps for deploying static website with docker and nginx. Created a docker file. Used nginx as base image and copied static website files from working directory into the container. Used docker build to build docker image and then run the image. Static website hosted on port 8080.

https://www.dailysmarty.com/posts/steps-for-deploying-a-static-html-site-with-docker-and-nginx

```Time spent: 4 hours```

**14/12/2021**

Project completed

## EC2 automation with ansible.
Ansible is a simple IT automation engine that  enables you to automate cloud deployments. You can use it to manage applications and services using automation playbooks. Each playbook defines a set of configurations, which is used consistently across cloud environments.
### Set up environment for ansible to work with AWS cloud
Install ansible on any VM or AWS VM.
Ansible uses python boto and boto3 libraries to call AWS API, and boto/boto3 needs AWS credentials in order to function.
sudo pip install boto boto3.
sudo pip install awscli.
aws configure – to configure credentials of AWS account.
cat  ~/.aws/credentials.
Now that the AWS credentials are stored. Create a playbook to provision the EC2 instance and using vi to create the Ansible playbook. A Playbook is a set of instructions. We use these instructions to describe the state, the configuration, we want Ansible to manage for us.
vi filename.yaml
### Explaining the Playbook:
Name= This tag specifies the name of the Ansible playbook. As in what this playbook will be doing.
Hosts = This is the target section. We are not working with server, we are going to work with cloud, regardless we need a target, so we’ll use localhost.
gather_facts = This is going to be FALSE since we are working with cloud, we don’t need to gather any facts.
become_user = ansible become_user defines the user which is being used to execute the tasks. This task will be executed as the root user.
Vars= Vars tag lets you define the variables which you can use in your playbook.
Tasks = This is where we’ll draw up our playbook, and tell Ansible what exactly we want the playbook to do. In this case launch an instance with nginx to host a static website. For each task you need to implement a module.
user_data.sh= automatically run a script when an EC2 instance is launched.
Run
ansible-playbook -C filename.yaml  to check whether ansible is ready to launch EC2.
Once everything looks good,
Run
ansible-playbook  filename.yaml.
Now, if you go to Amazon console, you will see server is launched successfully. Copy the public ip and enter it in browser to view the static website.
## Deploying a Static Website In a Docker Container using an NGINX webserver.
Docker is a tool designed to make it easier to create, deploy and run applications by using containers. These containers will contain all the binaries and libraries required for your application. Your application is present in a container, or you have containerized your application. A container provides runtime environments for various applications so that we can write the application once and port the application between different platforms and clouds.
Docker image is a template with instructions which is used for creating docker containers. A docker image is built using a file called dockerfile.
Docker registry is an opensource server side service used for hosting and distributing images. Docker has its own default registry called docker hub.
Install docker.
Create a docker file.
vi dockerfile.
FROM - defines the base image used to start the build process.
RUN instruction allows you to install your application and packages required for it. It executes any commands on top of the current image and creates a new layer by committing the results.
In this case nginx image is used. RUN instruction used to install git and clone static website files from repository to nginx   static site location.
Now, You have a Dockerfile for your static site. You can now create a docker image with these files. To create a Docker image
docker build -t staticwebsite .
The above command will create a Docker image with name staticwebsite .Use “docker images” command to list available images on local system.
Now, you have a docker image now. Use this docker image to launch a new container on your system. To run your Docker container using the newly created image,
docker run -d -p 80:80 staticwebsite
In case the port 80 is occupied by the host machine or any other docker container. You can change the host machine port to something else.
docker run -d -p 8080:80 staticwebsite
Use “docker ps” command to view the running container.
Access your docker host using IP address (or hostname/domain name) on port 8080 to view application.





