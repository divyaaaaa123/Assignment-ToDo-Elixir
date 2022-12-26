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
![image](https://user-images.githubusercontent.com/47104889/209511710-a8260205-3818-4e79-93cb-cbade8901dcf.png)




1. Adding Tasks
![image](https://user-images.githubusercontent.com/47104889/209512640-e092165c-7bc2-4110-9b39-09b708635fdd.png)


2. All tab - After Completion of task - i.e completion of task2
![image](https://user-images.githubusercontent.com/47104889/209512733-2b6681f3-ad72-4264-963a-a9176642b57d.png)

3. Active tab - after completion of task2
![image](https://user-images.githubusercontent.com/47104889/209512833-af9c628d-2082-4b22-8948-df20edfaac0b.png)

4. Completed tab - after completion of task2
![image](https://user-images.githubusercontent.com/47104889/209512911-f6f72c09-6d2c-4c02-a1a9-dcd40a64bd76.png)


5. All tab - Deleting Tasks from list - deleting task2
![image](https://user-images.githubusercontent.com/47104889/209513084-fcebe5b3-3306-4992-ae3f-719223ffa17a.png)


6. Completed tab - Deleting Tasks from list - deleting task2
![image](https://user-images.githubusercontent.com/47104889/209513456-e29c3784-62a3-4054-bc76-a45c2fb652c6.png)

7. Completed tab - if all multiple completed task needs to be cleared at once, click clear all button
![image](https://user-images.githubusercontent.com/47104889/209513856-4d40c4cb-ee89-437c-a83b-63de8b7b3208.png)

![image](https://user-images.githubusercontent.com/47104889/209514048-a5e2f9e8-93a4-4af4-8d1e-8d3d7b6d7392.png)


8. Editing and updating task
![image](https://user-images.githubusercontent.com/47104889/209514146-26850b2c-bc27-4939-bf42-57d3d042dd54.png)

![image](https://user-images.githubusercontent.com/47104889/209514221-f111a5ad-3519-407b-a415-714ab223afc1.png)

![image](https://user-images.githubusercontent.com/47104889/209514314-191a3b1b-0fea-4543-8461-d97d91995c60.png)




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

