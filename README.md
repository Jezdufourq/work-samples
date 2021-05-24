# Introduction

This is a web application for the Tanda challenge. The tech stack is a ruby on rails backend, with a react SPA frontend, using the material UI library. It also uses JWT's to authenticate the users requests.

# Getting started

To run the application, create two terminal windows. Change the directory into the source file for both the client and the server. Please see the instructions below for each of the applications.

## Client

It is assumed that you have the latest version of nodejs and yarn installed. Run the following commands.

```
cd /client
yarn install
yarn start
```

This will start a local server on port 8080

## Server

It is assumed that you have the latest version of ruby and rails installed. Run the following commands

```
cd /server
cd /src
gem install
rails db:purge
rails db:migrate
rails s
```

This will start a local server on port 3000

## More information

If you would like to see all of the API endpoints which the rails app exposes, run the following command.

```
rails routes
```

This will give you a list of all of the routs on the rails app. You can then test these routes using Insomnia or Postman.

# General Architecture (server/datebase)

You can find out the general architecture for the backend here.

# Futher comments

This challenge was done to address the requirements in these two challenges provided by Tanda [Backend](https://github.com/TandaHQ/work-samples/tree/master/adnat%20(backend)) and [Frontend](https://github.com/TandaHQ/work-samples/tree/master/adnat%20(react)). The additions which this application has according to the README file in the backend challenge are:

* A User can sign up to multiple organisations (HARD)
* Javascript enhancements (i.e react SPA)
* Datepicker for shift date field

This solution is a work in progress, and there are some bugs. In addition, not all of the API endpoints have the correct error handling required. These are for future improvements
