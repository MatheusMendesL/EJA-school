-- I didnt finished the docker yet

# Estudadores.edu
*A platform for adult education (EJA) for users over 18 years old*

## Introduction
This platform allows adults to complete exercises in the subjects they want.  
Students earn points and there is a global ranking.

- Authentication with JWT
- API in Node.js
- Frontend in JavaScript

---

## Stack

- **Frontend**: HTML, CSS, JS
- **Backend**: Node.js API
- **Authentication**: JWT

---

## How to start the project
### To run this project you NEED to configure the .env or put your configurations

Open your terminal and run the following commands:

```bash
# Clone the repository
git clone https://github.com/MatheusMendesL/EJA-school

# Enter the project folder
cd EJA-school

# Enter the backend folder
cd backend

# Install dependencies
npm install

# Start the backend server
node server.js

```
# Docker commands 
if you want to run with docker, use this commands
```bash
# First you need to configure the .env of the project with the data od the server
# After that you need to remove the comments in the /backend/src/config/config_sql.js

# And you can create the image
docker build -t estudadores-backend ./backend

# Now you can start the system
docker-compose up -d
```

