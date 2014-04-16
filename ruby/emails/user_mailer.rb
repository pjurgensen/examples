# /mailers/user_mailer.rb

class UserMailer < ActionMailer::Base
  default from: "tweeter-team@tweeter.com"

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation"
  end
end
