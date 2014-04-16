#User Authentication from Scratch

* Add bcrypt to Gemfile: gem 'bcrypt'

* Update User model and spec to include email and password validations (see user/user.rb and user/user_spec.rb)

* Update Users Controller with new, create, and show (see controllers/users_controller.rb)

* Create a Sessions Controller with new, create, and destroy (see controllers/sessions_controller.rb)

* Update Application Controller to include current_user and authorize methods (see controllers/application_controller.rb)

* Update routes to include custom routes and session routes (see routes.rb)

* Create a new user sign up page with a form that renders appropriate errors (see user/new.html.erb and user/_errors.html.erb)

* Create a sessions folder in views and create a new session login page (see session/new.html.erb)

* Update the application view, header view, and/or homepage view to include sign up, login, and logout links. Also display user's handle in the header when signed in (see home.html.erb and _header.html.erb)

* Make sure to have a user show page (see user/show.html.erb) if this is where you decide to send them after signing up and/or logging in.
