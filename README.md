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
![Initial Risk Assessment Table](/Readme_Images/risk_assessment_table.png)

### ER Model
The image below shows the ER Model for the Pet Clinic. This was supplied via the following link within the Backend of the applications [GitHub Repository](https://github.com/spring-petclinic/spring-petclinic-rest). 
![ER Model](/Readme_Images/petclinic-ermodel.png)

### CI/CD Pipeline
In order to deploy this Pet Clinic application, a full CI/CD Pipeline was utilised to build, test, deploy, update and maintain the application.

### Project Tracking
In order to keep track of the sprint and the backlog of tasks that needed to be completed, a Kanban board was created (using Jira) to keep all sprint and project backlog items in one place. A screenshot below shows the Jira board at the beggining of the sprint with most of the required tasks present, however this was fully completed with all tasks and story points estimates before the commencement of the project/sprint. 
![Jira Board Start](/Readme_Images/jira_board_start.png)

### Version Control
Throughout the course of the project/sprint, version control was used. More specifically, the Feature-Branch model of version control was adopted. The reason for using Version Control is to keep track of all work that has been created and should any issues arise, the code and objects that have been created will not be lost. 

The type of Version Control used for this project was Git, incorporating GitHub as a place to store the repository. The Feature-Branch Model was adopted in order to keep track of the work being completed and ensure that no bugs or unnecessary code was pushed to the main/live environment. Each new feature that was being added to the application was worked on using a seperate branch from the development branch. Once all was completed on the feature branch, it could then be merged (pull requested) back to the main branch to check for any issues with the other features that are already on the dev branch. Only once all was working and in a "finished" state, would the dev branch be merged back to main/live branch, where it could be deployed to the end user. 

The screenshot below shows an example of how the Feature-Branch Model looks like in terms of the network diagram:
![Network Diagram Image](/Readme_Images/network_diagram.png)

