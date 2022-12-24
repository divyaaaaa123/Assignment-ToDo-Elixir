# Assignment-ToDo-Elixir

This is an example application that shows how to use Cowboy in conjunction with  to create data driven Single Page Todo Applications.

This project has been developed using the following technologies:
1. Elixir 1.14
2. Plug - Cowboy 2.0
3. Ecto  3.1
4. Postgresql
5. HTML 5
6. CSS


# OUTPUT
![image](https://user-images.githubusercontent.com/47104889/209429819-4b0c5c65-f386-44c4-908f-b4c3235b02b3.png)



1. Adding Tasks
![image](https://user-images.githubusercontent.com/47104889/209429880-46ff5ad2-0f06-475b-aeb1-f12b48ff8fb9.png)


2. All tab - After Completion of task - i.e completion of task2
![image](https://user-images.githubusercontent.com/47104889/209429912-6c81e6f1-5aa3-42bb-9065-934a90c25edc.png)
 
3. Active tab - after completion of task2
![image](https://user-images.githubusercontent.com/47104889/209429962-b5216e96-d3bb-4d04-ac4e-13c19603f0b7.png)

4. Completed tab - after completion of task2
![image](https://user-images.githubusercontent.com/47104889/209430000-c82ca49c-75f7-42b9-8a4c-54b79405b7cc.png)

5. All tab - Deleting Tasks from list - deleting task2
![image](https://user-images.githubusercontent.com/47104889/209430047-24690d9c-f86c-4e25-9a06-f30ed847955a.png)

6. Completed tab - Deleting Tasks from list - deleting task2
![image](https://user-images.githubusercontent.com/47104889/209430094-6422432c-b860-4d6b-b6c7-21a41b87ebd2.png)

7. Editing and updating task
![image](https://user-images.githubusercontent.com/47104889/209430146-fa908df7-6ec2-4db8-9b63-838867968343.png)
![image](https://user-images.githubusercontent.com/47104889/209430179-6bc1003e-6b8c-425e-9810-c00a9d5e6038.png)



# Features
This repository contains the source code of a Todo list web application  (not Phoenix). In this project you will find how to implement important features and services such as:

**Backend** <br/>
Serve dynamic files (Cowboy and plug handler) <br/>
Data modeling and persistency (Ecto + PostgreSQL)

**Frontend** <br/>
Web Page (HTML5, CSS)

# Setup

To start this application locally:

1. Make sure you have installed Elixir, Erlang, and PostgreSQL
2. Install the Mix dependencies: $ mix deps.get
3. Create and migrate the development database: $ mix ecto.setup
4. Start the application with all its dependencies: $ mix run --no-halt
5. Start the localhost:4001 on browser
6. For unit testing - mix test

# Unit Testing - for Ecto

**OUTPUT**
![image](https://user-images.githubusercontent.com/47104889/207021416-f1a535b2-3d06-4d71-8892-ebb66404129a.png)

