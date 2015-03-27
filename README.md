Kam's Blog App
======

A simple blogging app where you can create, edit and delete blog posts and their associated comments. Optional user sign up / log in available courtesy of Devise.

Built with Rails / Postgres using Rspec and Capybara for specs.

Directions with Heroku
---------

1.) Visit kams-blog-app.herokuapp.com in your browser.

2.) Have fun!


Directions without Heroku
---------

1.) Clone the repository:
`$ git clone https://github.com/KameronJohnson/Blog-App.git`

2.) In terminal, install the gems:
`$ bundle`

3.) Make sure postgres is running and in terminal, create the database:
`$ rake db:create`

4.) In terminal, create the migrations:
`$ rake db:migrate`

5.) Start the rails server:
`$ rails s`

6.) Type in localhost:3000 in your browser.

7.) As always, have fun!

About
-----

Ruby on Rails assessment at Epicodus Winter 2015.

By Kameron Johnson

License
-------

MIT license.
