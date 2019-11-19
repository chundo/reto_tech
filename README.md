# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails new RetoTech -d=postgresql -T --webpack=react #OK

rails g scaffold ProductCategory name description:text active:boolean #OK

rails g scaffold Product name product_category:references description:text price:integer image active:boolean #OK

rails g scaffold City name code description:text state:references active:boolean #OK

rails g migration AddPhoneToUser phone name city:references #OK

rails g scaffold Sale value:integer sale_type user:references active:boolean #OK

# rails d scaffold OrderStatu name code description:text active:boolean #OK 

rails g scaffold Order user:references total:integer sub_total:integer taxes:integer statu note:text active:boolean

rails g scaffold OrderDetails order:references product:references price:integer image



===============================================================================

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

===============================================================================