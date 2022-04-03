# JJD
Setup instructions:
- In IntelliJ Idea download and install Apache Tomcat from https://tomcat.apache.org/
- The landing page in JSP is configured to open browser at URL: http://localhost:8080/CompanyLanding/index.jsp

Assignment 1  - Java, scanner, IntelliJ Idea
The program is run through the main method in Admin.java in com.example.companylanding package
When the programs runs, 
1 - it will populate an arrayList with any data found on the external UsersList text file.
2 - ask admin(user) to choose the operation they want to perform - They can add a user, update user's info
or cancel to terminate the session.
3 - If admin chooses "Add", they will be able to enter the Username, Password and Phone number. 
If username is already in the list, they will be notified and the operation will not proceed.
Else, a new user will be added and the admin will be notified that it has been done.
4 - If admin chooses "update", they will be asked to add same info as "Add". However, if username exists 
on the list, their information will be updated and usersList text file refreshed with new information. If username doesn't exist, the operation will not proceed and admin will be notified.
The program will going keep on with the above mentioned steps until the admin(user) chooses to cancel and terminate the session.
 

Assignment 2  - web App using Tomcat 9.0.56, Apache, Maven, Servlet, JSP, HTML, CSS, Javascript, Java
The front-end has been built using JSP. 
When user inputs her username and password, the servlet will check if there is a match in the same UsersList text file (used in assignment 1). If a match is found, the user will be logged in and greeted. If no match is found, an error message will popup on the same page. User can input his information again.
If user refreshes the page, the popup and input are removed.


Assignment 3 - Microsoft SQL server / SQL Server Management Studio
1 - Creation of database
2 - Creation of schema
3 - Insert the 3 tables
4 - Insert the dummy data for testing
5 - Create a query to retrieve the requested information
