# library-management
Library Management System - Ruby on Rails

Features
--------

- Signup/Login users
- Books CRUD
- Mail book details to user (Async)
- Subject-wise Categorization of Books

Gems
----

- carrierwave
- mini_magick
- file_validators
- devise
- sidekiq

Installation
------------

1. Create project:

```ruby
    $ rails new library-management
```

2. Setup Postgres

- Create a postgres user

```ruby
    $ sudo -u postgres createuser maanavshah -s
```

- Login to psql

```ruby
    $ sudo -u postgres psql
```

- Set user's password

```ruby
    \password maanavshah
```

- Add the following line to gemfile

```ruby
    gem 'pg'
```

- Update the database.yml for postgres

- Setup library-management database

```ruby
    $ rake db:create
    $ rake db:migrate
```

3. Generate Book and Subject model

```ruby
    $ rails generate model Book
    $ rails generate model Subject
```

4. Generate Book and Subject migration

```ruby
    $ rails generate migration books
    $ rails generate migration subjects

    $ rails db:migrate
```

5. Generate controller

```ruby
    $ rails generate controller Book
```

6. Add Carrierwave for image storage

https://code.tutsplus.com/articles/uploading-with-rails-and-carrierwave--cms-28409

```ruby
    $ rails generate uploader Image

    $ rails generate migration add_image_to_books image:string

    $ rake db:migrate
```

7. Add Minimagic to generate thumbnail and support carrierwave

If images are already uploaded then run:

```ruby
    $ rails c
```

```ruby
    Book.find_each {|book| book.image.recreate_versions!(:thumb) if book.image?}
```

8. Adding Devise and User

https://guides.railsgirls.com/devise

```ruby
    $ bundle install
    $ rails g devise:install
```
Ensure you have defined default url options in your environments files. Open up config/environments/development.rb and add this line:

```ruby
   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

```ruby
    $ rails g devise user
    $ rails db:migrate
```

9. Add ActionMailer

```ruby
    $ rails generate mailer UserMailer
```

10. Sidekiq with ActionMailer

https://gist.github.com/maxivak/690e6c353f65a86a4af9

You can create environment variables using:

http://railsapps.github.io/rails-environment-variables.html
