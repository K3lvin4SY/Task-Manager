# Task Manager
A full-stack application that allows users to handle and view tasks.

Frontend: `React`<br>
Backend: `Python` with `flask`<br>
Database: `MongoDB`

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

### Gamification
To make it a bit more fun to use, it will also have a gamification feature.<br>
When completing a task assignment the user will gain a number of points.
But if this assignment was `late` it would give fewer points. The more late it is the fewer it will get.
And if it's `past due` some points will get redacted from the user's total amount of points.

With this gamification feature, it will be possible to add a statistics page in the future.
