# Task Manager
A full-stack application that allows users to handle and view tasks.

Frontend: `React`<br>
Backend: `Python` with `flask`<br>
Database: `MongoDB`

## Where the idea came from
At home, I live with two roommates and we have a cleaning list on an Excel ark that says what should be cleaned and how often.

But I found this inconvenient. I wanted something to keep track of what we had done and remind us when it had to be done again.
All this will be displayed on the home display panel on the wall, where tasks will be listed under each user.

So, that's why I'm creating this application that will be able to do that.

## What the Application will do
Simply put, handle and show tasks.

### The user will be able to add tasks and specify the following detail:
- How many times a day/week/month/year it will occur.
- After `X` amount of days task-status will change to `late`.
- After `Y` amount of days task-status will change to `past due`.
- Specify one or more user-assignees to task assignments (Will rotate between them)
- Divide work between users (Amount of times task will be assigned to each user (In %))
- Work time amount (To be able to balance the work along with other tasks)

### On the front-end it will be possible to view the following pages:
- Task Panel
  - View tasks
  - Create tasks
  - Edit tasks
  - View tasks assignments
- Settings and Preferences
  - Handle users & their points
  - Handle Preferences

Depending on what user is logged into the site, it displays different tasks.
In other words, a user will only be able to view its own tasks (If default user permissions apply).
A user with root permission will be able to view all users' tasks. Perfect for a home display panel.
