![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)

#Movie App

Our client RetFlix wants BEWD students to develop an app.

They want an application that allows visitors to:

* View all movies in the database
* Add a new movie to the database
* Edit a movie in the database
* Search for a specific movie

We will build a Rails app for RetFlix during lessons 9 & 10. Each lesson we will add more functionality to the app.

Pairing is sharing, and happy coding :)

##Quick Fire: 20 min
####Task Instructions

1. Create a new Rails application called movie_app
2. Generate a movies controller with an `index` action
3. Set your root route to the index page
4. Your `index.html.erb` should welcome users to the movie app. (e.g. "Welcome to RetFlix! See our collection of movies below")

##Lab Time - Movie Model: 60 min
####Task Instructions

Add to your movie_app

* Generate a Movie model with title, description, and year_released attributes.
* Use the [seeds](movie_seeds.rb) file to populate your database with movies.
* Update your movie's `index.html.erb` so that it lists all the movies in the database. (Google is your friend).
    * Rails console is also your friend. Use it to explore and experiment with ActiveRecord methods that will help you interact with the database.
