@echo off

rem Function to start the backend process
:start_backend
cd "Task-Manager-Backend" &>nul
set FLASK_ENV=development
start cmd /k python3 app.py > backend.log 2>&1
echo Backend started (PID: %errorlevel%)
cd ..

rem Function to start the frontend process
:start_frontend
cd "Task-Manager-Frontend" &>nul
start cmd /k npm start > frontend.log 2>&1
echo Frontend started (PID: %errorlevel%)
cd ..

rem Function to stop a process by name (backend or frontend)
:stop_process
if "%~1%"=="" (
  echo Please specify a process to stop (backend or frontend).
  goto exit_batch
)

taskkill /F /IM "%~1%.exe" >nul 2>&1
if %errorlevel% EQUALS 1 (
  echo Process "%~1%" not found.
) else (
  echo %~1% stopped.
)

goto exit_batch

rem Function to restart both processes
:restart
call :stop_backend
call :stop_frontend
call :start_backend
call :start_frontend
echo Processes restarted.

:exit_batch

rem Display usage message if no arguments provided
if "%~1%"=="" (
  echo Usage: %0% (start|stop|restart) [backend|frontend]
  echo.
  echo   start: Start the specified process (or both if no argument).
  echo   stop: Stop the specified process (or both if no argument).
  echo   restart: Restart the specified process (or both if no argument).
  echo   backend: Manage the backend process (python app.py).
  echo   frontend: Manage the frontend process (npm start).
  echo.
)

pause
