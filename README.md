# Alpha prototype starter

This is the starting point for front end prototypes in project Alpha. 

## What this repository provides

Included in this repository is: 

* The latest version (0.0.4) of the [front end toolkit](https://github.com/nationalarchives/tna-frontend-toolkit) providing access to all existing [core patterns](https://cdn.nationalarchives.gov.uk/toolkit/index.html)  
    * via the toolkit you have access to the Bootstrap 4 grid, along with [other utilities](https://github.com/nationalarchives/tna-frontend-toolkit/blob/develop/sass/navi.scss) 


## Development machine configuration

Use these steps to get up and running

1. Ensure you have Python 3.7 and pip installed
2. Clone this repository
3. Create a virtual environment with `python3 -m venv venv`
4. From the root directory run `source venv/bin/activate` 
5. Install dependencies with `pip install -r requirements.txt`
6. Start the application with `flask run`
7. See the command line for the URL to visit
8. When finished run `deactivate` from the virtual environment

For front end assets:

In a _new terminal_ run these commands

9. Install Gulp CLI globally with `npm install --global gulp-cli` (Note: you only need to do this once)
10. Install Node dependencies with `npm install`
11. Start Gulp with `npm start` 