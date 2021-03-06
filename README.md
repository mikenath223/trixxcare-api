# Trixxcare-API

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

<br />
<p align="center">
  <a href="https://www.microverse.org/">
    <img src="docs/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">
	 Trixxcare API
  </h3>

  <h3 align="center">
	 Rails API-Deploy link - https://trixxcare.herokuapp.com
  </h3>

  <h3 align="center">
	 React Frontend link - https://trixxcare.netlify.app/
  </h3>

  <p align="center">
    This project implements an Rails-API setup to integrate with a react frontend app where patients can create appoitments with doctors
    <br />
    <a href="https://github.com/mikenath223/trixxcare-api/blob/master/README.md"><strong>Explore the docs 📚</strong></a>
    <br />
    <br />
	  🖊️
    <a href="https://www.theodinproject.com/courses/ruby-on-rails/lessons/final-project">Assigment</a>
    🐛
    <a href="https://github.com/mikenath223/trixxcare-api/issues">Report Bug</a>
    🙏
    <a href="https://github.com/mikenath223/trixxcare-api/issues">Request Feature</a>
  </p>
</p>

## Trixxcare-API

The main goal is to create an API backend for the front end react app.

# Validations

- Rubocop

# Get Started

* Make sure your PG cluster is running
* Run `bundle install` & `rails webpacker:install`
* Refer to this (stackoverflow post)[https://stackoverflow.com/questions/38271376/rails-pginsufficientprivilege-error-permission-denied-for-relation-schema-m/44862057#44862057] for instructions on creating a new user(root) with `password` as password.
* Run `rails db:migrate` to migrate db
* Run tests with `bundle exec rspec <insert file_path here>`
* Run `rails db:seed` to generate seed data.
* Run `rails s` to start rails server
* Go to `localhost:3000` on a tool like Postman to make api-requests

# Features

* Users sign up and then sign in when registered.
* Appointments are created in relation to the doctors table as api-requests from the frontend.
* Postgres databases both for development and production 
* Associates several tables on the database using foreign keys:

* Database Schema
<img src="docs/screenshot.png" alt="schema" width="700" height="500">

* Use of knock and jwt gem for API authentication
* Modify `routes.rb`
* Managed state with data on SqliteDB
* Tests made with [`RSpec`](https://relishapp.com/rspec/)

# API Endpoints

## Users

### GET Request
> /api/currentuser
* Requires Authentication
* Returns current user's username

### POST Request
> /api/user_token
* Doesn't require Authentication

* Accepts POST params eg. `{"auth": {"username": "John Doe", "password": "secret"}}`

* Response if successfull - `201 Created`, example return `{"jwt": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9"}`

* Response if not successfull - 404 Not Founnd

## Doctors 

### GET Requests
> /api/doctors
* Doesn't require Authentication

* Returns all doctors.

> /api/doctors/:id
* Requires Authentication

* Returns the details of the doctor matching the :id in the request params.

## Appointments
> All requests to appointments require authentication.

### GET Request
> /api/appointments
* Returns all appointments belonging to the current logged in user. Appointments are returned with parameters of doctor_name, location and appointments time.

### POST Request
> /api/appointments
* Creates an appointment when sent, returns 204 No Content when succesful, else if unsuccessful returns a hash with an example format like this: `{"message": "Doctor must exist"}`. If appointment with the same date-time already exists it returns an error message of the format: `{"message": "Appointment date and time already exists!"}`.


### PATCH/PUT Request
> /api/appointments/:id
* Updates an appointment of the id provided for the current user. Returns 204 No Content if appointment belongs to the current user, else returns an error message of the format: `{"message": "Not authorized to perform the above action!"}`.

### DELETE Request
> /api/appointments/:id
* Deletes an appointment of the id provided for the current user.  Returns 204 No Content if appointment belongs to the current user, else returns an  error message of the format: `{"message": "Not authorized to perform the above action!"}`.


> To send a request with the Authorization Header, simply append the given auth token to the request in the format `Bearer [insert auth token]`.

# Built With

* Passion for code.
* `ruby` v2.6.5
* `rails` v5.1+
* `vscode` with _Ruby_ and _Rubocop_ extensions
* Linux

# Author

**Michgolden Ukeje**

- Github: [@mikenath223](https://github.com/mikenath223)
- Twitter: [@Michgolden_Nath](https://twitter.com/MichgoldenU)
- Linkedin: [Ukeje Michgolden](https://https://www.linkedin.com/in/michgoldenukeje/)
  <br />

# License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details 

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/mikenath223/trixxcare-api.svg?style=flat-square
[contributors-url]: https://github.com/mikenath223/trixxcare-api/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/mikenath223/trixxcare-api
[forks-url]: https://github.com/mikenath223/trixxcare-api/network/members
[stars-shield]: https://img.shields.io/github/stars/mikenath223/trixxcare-api
[stars-url]: https://github.com/mikenath223/trixxcare-api/stargazers
[issues-shield]: https://img.shields.io/github/issues/mikenath223/trixxcare-api
[issues-url]: https://github.com/mikenath223/trixxcare-api/issues
[license-shield]: https://img.shields.io/github/license/mikenath223/trixxcare-api
[license-url]: https://github.com/mikenath223/trixxcare-api/blob/master/LICENSE.txt
