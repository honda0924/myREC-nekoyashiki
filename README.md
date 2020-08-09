# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :bps
- has_many :trainings

## bpsテーブル
|Column|Type|Options|
|------|----|-------|
|measure_date|datetime|null: false|
|term|int|active_hash|
|measure_time|datetime|active_hash|
|top_bp|int|null:false|
|bottom_bp|int|null:false|
|pulse|int|null:false|
|med_chk|boolean||
|weight|int||
|user|references|foreign_key: true|
### Association
- belongs_to :user

## trainingsテーブル
|Column|Type|Options|
|------|----|-------|
|training_date|datetime|null: false|
|top_bp|int||
|bottom_bp|int||
|pulse|int|null:false|
|condition|int|active_hash|
|sleeping|int|active_hash|
|eat|int||
|weight|int||
|med_chk|boolean||
|breath_index|int|null:false|
|leg_index|int|null:false|
|training_time|int|null:false|
|user|references|foreign_key: true|
### Association
- belongs_to :user


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
