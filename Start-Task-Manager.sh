#!/bin/bash

# Function to start the backend process
start_backend() {
  cd ./Task-Manager-Backend/ || exit
  export FLASK_ENV=development > /dev/null 2>&1
  python3 app.py > backend.log 2>&1 &
  echo "Backend started (PID: $!)"
}

# Function to start the frontend process
start_frontend() {
  cd ../Task-Manager-Frontend/ || exit
  npm start > frontend.log 2>&1 &
  echo "Frontend started (PID: $!)"
}

# Function to stop the backend process
stop_backend() {
  # Find the backend process
  pid=$(ps aux | grep python3 | grep app.py | awk '{print $2}')

  # Check if process exists
  if [[ -z "$pid" ]]; then
    echo "Backend not running."
  else
    kill $pid
    echo "Backend stopped (PID: $pid)"
  fi
}

# Function to stop the frontend process
stop_frontend() {
  # Find the frontend process
  pid=$(ps aux | grep npm | grep start | awk '{print $2}')

  # Check if process exists
  if [[ -z "$pid" ]]; then
    echo "Frontend not running."
  else
    kill $pid
    echo "Frontend stopped (PID: $pid)"
  fi
}

# Function to restart both processes
restart() {
  stop_backend
  stop_frontend
  start_backend
  start_frontend
}

# Display usage message
usage() {
  echo "Usage: $0 (start|stop|restart) [backend|frontend]"
  echo "  start: Start the specified process (or both if no argument)."
  echo "  stop: Stop the specified process (or both if no argument)."
  echo "  restart: Restart the specified process (or both if no argument)."
  echo "  backend: Manage the backend process (python app.py)."
  echo "  frontend: Manage the frontend process (npm start)."
  exit 1
}

# Handle user input
case "$1" in
  start)
    if [[ -z "$2" ]]; then
      start_backend
      start_frontend
    elif [[ "$2" == "backend" ]]; then
      start_backend
    elif [[ "$2" == "frontend" ]]; then
      start_frontend
    else
      usage
    fi
    ;;
  stop)
    if [[ -z "$2" ]]; then
      stop_backend
      stop_frontend
    elif [[ "$2" == "backend" ]]; then
      stop_backend
    elif [[ "$2" == "frontend" ]]; then
      stop_frontend
    else
      usage
    fi
    ;;
  restart)
    if [[ -z "$2" ]]; then
      restart
    else
      usage
    fi
    ;;
  *)
    usage
    ;;
esac

echo "Done!"
