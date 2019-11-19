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


rails new RetoTech -d=postgresql -T --webpack=react

rails g scaffold ProductCategory name description:text active:boolean

rails g scaffold Product name product_category:references description:text price:integer image active:boolean

rails g migration AddPhoneToUser phone name city

rails g scaffold Status name description:text active:boolean

rails g scaffold Order user:references total:number sub_total:number tasex:number statu:references 

rails g scaffold OrderDetails order:references product:references price:integer image

rails g scaffold Sale value type user:references
