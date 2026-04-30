@echo off
echo === DECENTRALIZED VOTING SYSTEM STARTUP ===
echo.

echo 1. Creating dist directory...
mkdir src\dist 2>nul

echo 2. Bundling JavaScript files...
browserify ./src/js/app.js -o ./src/dist/app.bundle.js
browserify ./src/js/login.js -o ./src/dist/login.bundle.js

echo 3. Starting Node.js server...
start "Node.js Server" cmd /k "node index.js"

echo 4. Starting Database API server...
start "Database API" cmd /k "cd Database_API && python -m uvicorn main:app --reload --host 127.0.0.1"

echo.
echo === SERVICES STARTING ===
echo Node.js Server: http://localhost:8080
echo Database API: http://127.0.0.1:8000
echo.
echo IMPORTANT: Make sure Ganache is running on http://localhost:7545
echo Configure Metamask with Localhost 7575 network
echo.
echo Access application at: http://localhost:8080
echo.
pause
