#!/bin/bash

# This script deletes specific files from a newly created React application

# Check if the path argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 path_to_react_app"
    exit 1
fi

# Assign the first argument to a variable
APP_PATH=$1

# Change to the provided directory
cd "$APP_PATH" || exit

# Delete files
rm -f src/logo.svg
rm -f src/App.test.js
rm -f src/setupTests.js
rm -f src/reportWebVitals.js
rm -f src/index.css
rm -f src/App.css

echo "Unnecessary files from $APP_PATH have been deleted."
