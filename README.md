# DevOps-Team-Project
Repository for the DevOps (AWS) Team Project

## Table of Contents
* [Project Brief](#Project-Brief)
* [Project Planning](#Project-Planning)
    * [Risk Assessment](#Risk-Assessment)
    * [ER Model](#ER-Model)
    * [CI/CD Pipeline](#CICD-Pipeline)
    * [Project Tracking](#Project-Tracking)
    * [Version Control](#version-control)
* [The Application](#The-Application)
    * [Database](#Database)
    * [Technologies](#Technologies)
* [Known Issues and Future Improvements](#Known-Issues-and-Future-Improvements)

## Project Brief
To plan, designs and implement a solution for automating the development workflows and deployments of the Pet Clinic application. The full technology stack is as follows:
* Kanban Board (Jira) for Project Tracking
* Git (with the use of GitHub) for Version Control
* Jenkins acting as a CI Server
* AWS (Amazon Web Service) as the Cloud Platform
* NGINX as the Reverse Proxy

## Project Planning
### Risk Assessment
Prior to the commencement of the project, a Risk Assessment Table was produced in order to keep track and understand any of the possible risks to the project. Having this created prior to the commencement of the project allows for preemptive measures to be taken and can be updated during the course of the project should any new risks or issues arise or become apparant. The Initial Risk Assessment Table can be seen below:
![Initial Risk Assessment Table](/Readme_images/risk_assessment_table.png)

### ER Model
The image below shows the ER Model for the Pet Clinic. This was supplied via the following link within the Backend of the applications [GitHub Repository](https://github.com/spring-petclinic/spring-petclinic-rest). 
![ER Model](/Readme_images/petclinic-ermodel.png)

### CI/CD Pipeline
In order to deploy this Pet Clinic application, a full CI/CD Pipeline was utilised to build, test, deploy, update and maintain the application.The screenshot below shows how the full CI/CD Pipline looks like:
![CI/CD Pipline Diagram](/Readme_images/CICDPipeline.drawio%20(2).png)

### Project Tracking
In order to keep track of the sprint and the backlog of tasks that needed to be completed, a Kanban board was created (using Jira) to keep all sprint and project backlog items in one place. A screenshot below shows the Jira board at the beggining of the sprint with most of the required tasks present, however this was fully completed with all tasks and story points estimates before the commencement of the project/sprint. 
![Jira Board Start](/Readme_images/jira_board_start.png)

### Version Control
Throughout the course of the project/sprint, version control was used. More specifically, the Feature-Branch model of version control was adopted. The reason for using Version Control is to keep track of all work that has been created and should any issues arise, the code and objects that have been created will not be lost. 

The type of Version Control used for this project was Git, incorporating GitHub as a place to store the repository. The Feature-Branch Model was adopted in order to keep track of the work being completed and ensure that no bugs or unnecessary code was pushed to the main/live environment. Each new feature that was being added to the application was worked on using a seperate branch from the development branch. Once all was completed on the feature branch, it could then be merged (pull requested) back to the main branch to check for any issues with the other features that are already on the dev branch. Only once all was working and in a "finished" state, would the dev branch be merged back to main/live branch, where it could be deployed to the end user. 

The screenshot below shows an example of how the Feature-Branch Model looks like in terms of the network diagram:
![Network Diagram Image](/Readme_images/network_diagram.png)

## The Application
For this project, the following two repositories were used for the applications [frontend](https://github.com/spring-petclinic/spring-petclinic-angular) and [backend](https://github.com/spring-petclinic/spring-petclinic-rest). 

The frontend of the application uses Angular and the backend uses Rest API. The screenshot below shows the frontend of the application working, along with a screenshot of the frontend communicating with the backend to add new entries into the Database. 
![Frontend of the application](/Readme_images/frontend.png)

![Frontend of the application communicating with the backend to add to database](/Readme_images/frontend_w_backend.png)
![Frontend of the application communicating with the backend to add to database](/Readme_images/backend_table.png)

### Database
The database for the project at this stage is still using a non-persisting database locally. Future improvements would see this database be changed to an AWS RDS instance which will create a MySQL database which could then persist with the application. 

### Technologies
The application being used was pre-built using Java, Angular and Rest. Jira was also used as the Kanban board to keep track of the project as it progressed through the sprint. Git (incorporating GitHub) was used as the Version Control system. This allowed for the Feature-Branch model to be utilised and all work stored in a repository that each team member had access to and could update the whole project. 

A GitHub webhook was also created to link the project to Jenkins, which was used to automate the Testing, Building and Deploying stages of the application. Jenkins was also used to run the Terraform automatically to create the EC2 instances should they not exists. 

All Virtual Machines were created on AWS as EC2 instances in a range of t2.micro, t2.small, t2.medium and t3.small EC2 instance types, dependant on what the instance needed to run, etc...

Docker was also used to create new docker images for the frontend, backend and NGINX. 


## Known Issues and Future Improvements
At this moment, the database being used is the local database that is created and destroyed whenever the application is deployed. With a bit more time and a better look at the MySQL and RDS aspect of the project, this could be added to application in a future update of the application or a future sprint. 

