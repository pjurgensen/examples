#Sending Email Using Action Mailer

* To create a mailer, run: $ rails g mailer mailer_name email_name
=> ie, $ rails g mailer user_mailer signup_confirmation

* The following is created when the rails generator is run:
- A new 'mailers' folder with a file called 'user_mailer.rb' (used to send out the email)
- A new 'user_mailer' view folder with a file called 'email_name.text.erb' (includes the content of the email)

* Instance variables can be shared between the two new files, much like a controller and a view.

* Modify user_mailer.rb (see user_mailer.rb)
- Add a subject line
- Change who the email is from
- Make email_name accept the User model as an argument (ie, def signup_confirmation(user))
- Make user an instance variable (@user = user) so it can be used inside of the view
- Change who the email is being sent to: 'mail to: user.email'

* Modify email_name.text.erb to include a message to the user (see signup_confirmation.text.erb)

* Update users controller to send the email when someone signs up on your site (see users_controller.rb)

* In /config/environments/development.rb change the following to true so we get an exception raised when it doesn't deliver (see development.rb):
  config.action_mailer.raise_delivery_errors = true

* Add the letter_opener gem to Gemfile and run bundle: gem "letter_opener", :group => :development

* Set the delivery method in development.rb (see development.rb)

* A few options for the delivery method (ref development.rb):
- Use gmail (this is a hacky type way of doing it but it's cool to see an email get sent to your inbox during development)
- Use the letter_opener gem (didn't get a chance to use this one)
- Use the mailcatcher gem (the one used in development.rb); do the following;
1. $ gem install mailcatcher (do not save this gem in Gemfile, install it separately)
2. $ mailcatcher
3. Go to http://localhost:1080/
4. Send mail through smtp://localhost:1025






