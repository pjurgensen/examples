#Basic Gemfile for Ruby on Rails 4

* Gemfile provides a formatted list of gems used when creating a new rails app.

* Bundler is a gem that helps manage your gems. Steps for using bundler:

1. Install bundler
2. Create a file called Gemfile in the project directory (like the one included here).
3. Run bundle

* When bundle is run, bundler will install the gems listed and create a Gemfile.lock file that contains gems from the Gemfile and the gems they depend on.

##About the gems:

* rails - web appl framework; includes everything needed to create database-backed web apps according to the MVC pattern.
* pg - Ruby interface to the PostgreSQL.
* sass-rails - integration for Ruby on Rails projects with Sass stylesheet language.
* uglifier - Ruby wrapper for JS compressor.
* coffee-rails - CoffeeScript adapter for the Rails asset pipeline. 
* jquery-rails - jQuery for Rails.
* turbolinks - makes following links in the web application faster.
* jquery-turbolinks - helps fix bugs with Turbolinks.
* paperclip - easy file attachment library for Active Record. 
* bootstrap-sass - Sass-powered version of Bootstrap.
* bcrypt - an easy way to keep users' passwords secure.
* masonry-rails - a dynamic grid layout plugin for jQuery; arranges elements vertically, positioning each element in the next open spot in the grid. The result minimizes vertical gaps between elements of varying height, just like a mason fitting stones in a wall.

###development
* better_errors - replaces the standard Rails error page with a much better and more useful error page.
* binding_of_caller - ability to grab bindings from higher up the call stack and evaluate code in that context.
* quiet_assets - turns off the Rails asset pipeline log.

###test & development
* rspec-rails - a testing framework for Rails.
* capybara - helps test web apps by simulating how a real user would interact with your app.
* factory_girl - a fixtures replacement with a straightforward definition syntax, support for multiple build strategies (saved instances, unsaved instances, attribute hashes, and stubbed objects), and support for multiple factories for the same class (user, admin_user, and so on), including factory inheritance.
* pry - a powerful alternative to the standard IRB shell for Ruby.
end

###test
* shoulda-matchers - provides RSpec-compatible one-liners that test common Rails functionality. 