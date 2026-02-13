#!/bin/bash

echo "Starting Setup for University Timetable System..."

echo ""
echo "1. Installing Node.js dependencies..."
npm install

if [ $? -ne 0 ]; then
    echo "Error installing dependencies. Please check if Node.js is installed."
    exit 1
fi

echo ""
echo "2. Starting Docker containers..."
docker-compose up -d

if [ $? -ne 0 ]; then
    echo "Error starting Docker. Please check if Docker Desktop is running."
    exit 1
fi

echo ""
echo "Setup Complete!"
echo "---------------------------------------------------"
echo "1. Run 'node index.js' to start the application."
echo "2. Open http://localhost:3000 in your browser."
echo "3. Login with admin / admin"
echo "---------------------------------------------------"
