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

## usersテーブル

|Column            |Type   |Options                |
|------------------|-------|-----------------------|
|nickname          |string |null:false             |
|email             |string |null:false, unique:true|
|encrypted_password|string |null:false             |

### Association
 - has_many :exhibitions
 - has_many :comments

 ## exhibitions テーブル

|Column       |Type      |Options                     |
|-------------|----------|----------------------------|
|title        |string    |null:false                  |
|description  |text      |null:false                  |
|date         |string    |null:false                  |
|place        |string    |null:false                  |
|district_id  |integer   |null:false                  |
|category_id  |integer   |null:false                  |
|station      |string    |null:false                  |
|price        |text      |null:false                  |
|website      |string    |null:false                  |
|user         |references|null:false, foreign_key:true|


### Association
 - belongs_to :user
 - has_many : comments

  ## comments テーブル

|Column      |Type      |Options                     |
|------------|----------|----------------------------|
|text        |text      |null:false                  |
|user        |references|null:false, foreign_key:true|
|exhibition  |references|null:false, foreign_key:true|

### Association
 - belongs_to :user
 - belongs_to :exhibition
