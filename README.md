# Project Title
CASH IT
## Project Description
Cash It web application which help users to find other user’s who are willing to exchange cash.

## Prerequisites
Before setting up and running this project, make sure you have the following:

1. **Tomcat Server**: Version 10.1 is required. You can download it [here](https://tomcat.apache.org/download-10.cgi).
2. **MySQL Database**: Make sure MySQL is installed and accessible.

## Setup Instructions

### 1. Clone the Repository
Clone this repository to your local machine.

```bash
git clone <repository_url>
cd <repository_name>
CREATE TABLE users (
    name VARCHAR(100),
    email VARCHAR(100) PRIMARY KEY,
    mobilenumber BIGINT,
    securityQuestion VARCHAR(200),
    answer VARCHAR(200),
    password VARCHAR(20),
    address VARCHAR(100),
    city VARCHAR(30),
    state VARCHAR(30),
    country VARCHAR(20)
);

CREATE TABLE amount (
    id INT,
    amount VARCHAR(10),
    amounttype VARCHAR(100),
    value INT,
    active VARCHAR(10)
);

CREATE TABLE cart (
    email VARCHAR(100),
    id INT,
    quantity INT,
    value INT,
    total INT,
    address VARCHAR(500),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(10),
    mobileNumber BIGINT,
    requestedDate VARCHAR(20),
    exchangeddate VARCHAR(20),
    paymentMethod VARCHAR(200),
    TransctionId VARCHAR(20),
    status VARCHAR(10)
);

CREATE TABLE message (
    id INT AUTO_INCREMENT,
    email VARCHAR(100),
    subject VARCHAR(200),
    body VARCHAR(1000),
    PRIMARY KEY(id)
);
3. Configure the Tomcat Server
Install and configure Apache Tomcat Server (version 10.1). Ensure the server is running, and deploy the application by placing the WAR file or the project folder in the webapps directory of Tomcat.

4. Start the Server
Start the Tomcat server, then access the application by navigating to http://localhost:8080/<your_project_name> in your browser.

Technologies Used
Frontend: JSP, HTML, CSS
Backend: Tomcat Server
Database: MySQL
Contact Information
For any issues, contact shivaramakrishnareddykeshi@gmail.com
