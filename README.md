# Standard Code Best Practices

Welcome to our best practices guide. This is a derivative of our "Rails Starter Kit" (https://github.com/codeisstandard/rails-starter-kit). The starter kit is what all of our new projects are derived from. That project should be consulted before looking at this one (it is open source as well)

Best practices contains common patterns we frequently use. This project comes in the form of a fairly typical "User has products, products have images" format. The types of functionality you'll find in here includes:

## AJAX file upload ##
We frequently want the ability to upload a file or image with AJAX so improve the user experience. To see that in action, 


## API ##
Check out /app/controllers/api/v1/productions_controller for more on our standard API. Note: we have not yet added OAuth to this project

## Getting Started ##
We use foreman for all of our projects. You'll need to add an .env file w/ your relevant pieces of info in it (email system, database, etc). The sample.env will guide you