# ALTSCHOOL HOLIDAY CHALLENGE

 **Creating a VPC network with Private EC2 Instances and a  Application Load Balancer with Automation deployment using ansible.**
 
### IMPORTANT INSTRUCTIONS
* Set up 2 EC2 instances on AWS(use the free tier instances).
* Deploy an Nginx web server on these instances(you are free to use Ansible)
* Set up an ALB(Application Load balancer) to route requests to your EC2       instances
* Make sure that each server displays its own Hostname or IP address. You      can use any programming language of your choice to display this.
* Define a logical network on the cloud for your servers.
* Your EC2 instances must be launched in a private network.
* Access must be only via the load balancer
* You must submit a custom domain name(from a domain provider e.g. Route53)   or the ALB’s domain name.

##  GETTING STARTED
> In this section, we'll create a VPC to connect our EC2      instances placed in different AZs and give them internet connection. From this scenario, we'll need:

### PREQUITISTES

    VPC in a region (me:us-east-1);
    Public Subnet on each AZ (2 in total);
    Private Subnet on one AZ
    Nat Gateway
    Internet gateway;
    Route tables; (3 in total)
    Security groups for ALB and EC2

* Then, I won't go through the console but I'll use ansible instead.

*  We'll use localhost as the target host, because here we don't touch EC2 instances yet. Make sure you've installed:

* Setup aws credential in the Var file;
 #setting up aws in environment is recommended.

* Ansible;

* boto3;

* python 3;

* Ansible collection for AWS by running ``ansible-galaxy collection install     community.aws.``

* Note*: All details below, you can replace with your own value.

  

### GOAL
* ````This illustrates how ansible can be used to provision Application Load Balancer attached to EC2 instance running in a private subnet which is  configured to be accessed from the internet the help of a aws service called Nat gateway.````

### Architecture Diagram
  ![](file:///C:\Users\Daramola%20Adeola\Downloads\alt.drawio.png)
