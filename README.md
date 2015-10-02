# Rails Best Practices

This project contains several demonstrations of common functionalities in Rails, such as asynchronous image upload and background processing. Rails Best Practices is cloned from [Rails Starter Kit](https://github.com/codeisstandard/rails-starter-kit), and is therefore configured to be easily deployed to [Heroku](https://www.heroku.com/). This repository is not intended to be a starting point for your project, but should be used as reference when implementing functionality into your own Rails app.

## Getting Started

Here are the instructions for getting Rails Best Practices running on your computer, including some prerequisites. Running the project locally is useful for testing out the existing features, and making sure a certain feature makes sense for your project. Also, it should give you can idea of what sort of configuration is required to get certain features working in your own project.

1. Clone this repo to your computer

		$ git clone git@github.com:codeisstandard/rails-best-practices.git
		
2. Copy the `sample.env` file into `.env`, and fill in the missing values. The `sample.env` file contains a list of all the environment variables that the application expects, and they are required for the app to run properly. If you are a [Standard Code](http://www.standardco.de/) developer, you can just copy the `.env` file from Dropbox.

		$ cp sample.env .env
		
3. Install [foreman](https://github.com/ddollar/foreman), a command-line utility for running Procfile-based applications. The Procfile is Heroku convention, and is a mechanism for declaring what commands are run by your application's dynos on the Heroku platform. In other words, Procfile is where you define your main web process (and which Rails server to use) and any worker processes (such as Sidekiq).

4. Install [postgres](http://www.postgresql.org/), and run postgres server if it's not already running. Rails Best Practices is configured to use a postgres database, but could be changed to use mysql instead.

		# Install postgres using homebrew
		$ brew install postgresql
		
		# Automatically launch postgres upon login
		$ ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents

		# Run postgres server now
		$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
		
5. Install [redis](http://redis.io/), which is required by [Sidekiq](http://sidekiq.org/). Sidekiq is the library used for background processing. It is defined in the `Procfile`, and is enabled by default. After installing redis using [homebrew](http://brew.sh/), follow the instructions in the terminal for loading redis automatically when starting your computer, and for launching redis immediately.

		$ brew install redis
		
6. Install [ImageMagick](http://imagemagick.org/script/index.php) by following the instructions on the [Paperclip](https://github.com/thoughtbot/paperclip#image-processor) repo. Paperclip uses ImageMagick to resize and process images before upload.

7. Update the database configuration in `config/database.yml`

8. Update the mailer host in `config/environments/development.rb` and `config/environments/production.rb`

9. Install gems and create the database. This should be familiar if you've ever developed with Rails.

		$ bundle install
		$ rake db:create
		$ rake db:migrate
		
10. Start the website using **foreman**. Unlike running `rails server`, foreman will actually look at your Procfile, and run all processes defined there. Running a website locally using foreman is very similar to how it will be run on Heroku, and it's the reason we recommend using it. Foreman will take the `.env` file you've already created, and load up the variables into your environment automatically.

		$ foreman start
		
If everything goes well, you should be able to use the fully-functional Rails Best Practices website on your local machine.

## Out-of-the-box Functionality

Some of these functionalities are inherited from Rails Starter Kit, and some are demonstrations that are specific to Rails Best Practices. **Product** and **Image** models are used to demo some of the features.

- Bootstrap with SASS
- Procfile and 12factor gem for Heroku compatibility
- Environment variables
- Upload to S3
- Sidekiq configuration for background processing
- User authentication via [Devise](https://github.com/plataformatec/devise)
- Mailer configuration
- Flash message placeholders
- Paperclip for attaching files to ActiveRecord objects
- Asynchronous image upload
- Streaming products to a page
- API for creating and reading products

## References

Also check out Rails Starter Kit: https://github.com/codeisstandard/rails-starter-kit