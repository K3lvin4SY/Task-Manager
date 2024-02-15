# Task Manager
A full-stack application that allows users to handle and view tasks.
Frontend: `React`
Backend: `Python` with `flask`
Database: `MongoDB`

## Where the idea came from
At home, I live with two roommates and we have a cleaning list on an excel ark that says what should be cleand and how often.

But I found this incovinient. I wanted something to keep track of what we had done and remind us when it had to be done again.

So, that's why I'm creating this application that will be able to do that.

## What the Application will do
Simply put, handle and shows tasks.

### The user will be able to add tasks and specify following detail:
- How many times a day/week/month/year it will occur.
- After `X` amount of days task-status will change to `late`.
- After `Y` amount of days task-status will change to `past due`.
- Specify one or more user-assignees to task-assignments (Will rotate between them)
- Devide work between users (Amount of times task will be assigned to each user (In %))
- Work time amount (To be able to balance the work along with other tasks)

### On the front-end it will be possible to view the following pages:
- Task Panel
  - View tasks
  - Create tasks
  - Edit tasks
  - View a tasks assignments
- Settings and Prefrences
  - Handle users & their points
  - Handle Prefrences
