# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: Model is the structure, view shows the rendered page, controller creates behavior

  Researched answer:  is an architectural pattern that separates an application into three main logical components: the model, the view, and the controller. Each of these components are built to handle specific development aspects of an application.



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the __get route_______ in the file config/routes
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ______about method______ in the file ____statics_controller.rb_________
  ```
  class ___Statics_________ < ApplicationController
    def _____about______
      render: ______'text about the class'__________
    end
  end
  ```

  Step 3: Create the View in the file _____statics.html.erb_________
  code:
  ```
  <div>This is the About page!</div>
  ```


3. Consider the Rails routes below. Describe the responsibility of  each route. Which routes must always be passed params and why?

```
/users/       method="GET"     # :controller => 'users', :action => 'index'
/users/1      method="GET"     # :controller => 'users', :action => 'show' -----THIS ONE
/users/new    method="GET"     # :controller => 'users', :action => 'new'
/users/       method="POST"    # :controller => 'users', :action => 'create'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit' ------THIS ONE
/users/1      method="PUT"     # :controller => 'users', :action => 'update'-----THIS ONE
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'----THIS ONE
```
Because they have to do with changing the behavior of a specific object.




4. What is the public folder used for in Rails?

  Your answer: it holds public files like css, html

  Researched answer: he public directory contains some of the common files for web applications.



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get '/main/game/guess' => "main#main"


6. What are cookies? What is the difference between a session and a cookie?

  Your answer: cookies store data. Cookies will store data even if the session is closed. A session will store data until a logout or a closeout

  Researched answer: store information on the web browser's system, in form of strings as key-value pairs that the web server has previously sent to this browser.



7. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: action designates what http verb is used. you designate it based on what mwthod you want to call via routes

  Researched answer:  form helpers generate it for every non-GET form.



8. Name two rails generator commands and what files they create:

  Your answer: rails g controller, rails g model. It will create a controller or a model

  Researched answer: A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above. ... The SQLite3 database that Rails will create for you when we run the bin/rails db:migrate command.


9. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1.How to render partial forms and collections

2.authentication

3.different types of injection
