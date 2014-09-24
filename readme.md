![image](http://i.ytimg.com/vi/3YYFFeVzmsw/maxresdefault.jpg)

# MisterMasterUserMeister: an exploration of the User

> This exercise will force you to work in new branches for each feature. 
One a feature is complete merge it back into master by
 - committing your changes
 - checking out master
 - running `git merge other_branch`

## Getting started

We used `scaffold_sinatra` to create a new application called `mister_user_app`

Fork my `mister_user_app` and clone down a copy.

## git checkout -b adds_user

Create a Sequel migration file in `db/migrations` to create a `users` table

A `users` table should have the following attributes and datatypes

- email  (string)
- name   (string)
- gender (string)
- picture (string)
- dob (integer)
- phone (string)
- location (string)
- password (string)

Create the corresponding Sequel::Model for `User`

## git checkout -b users_rake_task

Create a rake task `db:seed_random_users`

When invoked it should:
- load up the environment
- Do an HTTParty request to `http://api.randomuser.me/` for a random user
- Save 10 users to the database
- print out that 10 users were created

## git checkout -b httparty_refactor

Create a module called `RandomUser` with a module method called fetch
that performs the `HTTParty` request and returns the random user data.

Store your module in a `/lib` folder at the root of your project

Update `config/boot.rb` to load up all the files inside `lib`

Update your `Rakefile` to use `RandomUser.fetch`

## git checkout -b user_methods

In your `User` model create predicate methods for:
- `male?`
- `female?`
- `mr?`
- `ms?`
- `miss?`
- `mrs?`

The following predicate methods will rely on the `dob` column.
Check ruby's `Time.at` method

- `adult?` over 18
- `boomer?` born between 1946 and 1964
- `teen?` if between 13 and 18
- `tween?` between 11 and 12
- `child?` between 4 and 10
- `toddler?` between 1 and 3
- `baby?` between 0 and 1

## git checkout -b user_password

Create a new migration to update the `users` table that
- removes the `password` column and adds a `password_digest` column

Implement a secure password using the 
[sequel_secure_password gem](http://mlen.pl/sequel_secure_password/)

## git checkout -b user_signup

Create a "Sign up!" link on `/` that goes to `/signup`

`/signup` should display a form to enter

- email
- password
- password_confirmation

post to `/users` and save the user to your database then redirect to "/"

## git checkout -b user_login_success

Create a "Login" link on '/' that goes to '/session/new'

'/session/new' should display a form to enter

- email
- password

post to '/session'  if the user is properly authenticated, store their id 
in session and redirect to their show page.

## git checkout -b user_login_failure

If a user enters the wrong password information redirect them back to the 
login page and use rack-flash to display a message that they entered the 
wrong information.

## git checkout -b update_user_page

Once a user is logged in and redirected to their show page display an "update profile" link to take them to an edit form to add additional information to their profile.
