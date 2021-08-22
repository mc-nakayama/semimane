## semimane
### About（概要）
- 訪問セミナー講師向け
- for Tutors of seminars 
- 講座、教室or会場、日程、収支を登録して週間／月間で管理可能！
- If you use this application, you can manage "venues" , "schedule", "balance of payments".

## URL

## Test Account（テストアカウント）


## Usage(利用方法)

## Purpose of Use(目的)
 

## Business Requirements（要件定義）

## Description（説明）
- ruby2.6.3/rails6.0.0




## Plans（予定）

## ER(DB設計)
### seminars_table
|Column|Type|Options|
|---|---|---|
|name|string|unique:true,index:true|
|style|string|null:false|
|description|text|null:false|

#### Assosciaion
- has_many:venues,through: :semininars-venues
- has_many:schedules


### venues_table
|Column|Type|Options|
|---|---|---|
|name|string|null:false, unique:true|
|postal_code|string|null:false|
|address|string|null:false|
|tel|string|null:false|
|memo|text||
|image|text||

#### Assosciaion
- has_many:seminars,through: :seminars-venues
- has_many:seminars_venues
- has_many:schedule

### seminars_venues_table
|Column|Type|Options|
|---|---|---|
|seminar|reference|foreign_key:true|
|venue|reference|foreign_key:true|

#### Assosciaion
- belongs_to :seminar
- belongs_to :venue

### schedules_table
|Column|Type|Options|
|---|---|---|
|schedule_date|date|null:false|
|start_time|time|null:false|
|stop_time|time|null:false|
|reservation|integer|null:false|
|participants|interger|null:false|
|memo|text||
|seminar_id|references|foreign_key:true|
|venue_id|references|foreign_key:true|

#### Assosciaion
- belongs_to:seminar
- has_one:balace_of_payment
- belongs_to:seminar
- belongs_to:venue

### balance_of_payments_table
|Column|Type|Options|
|---|---|---|
|per_earning|integer||
|per_cost|integer||
|other_cost|integer||

#### Assosciaion
- belongs_to:schedule
- has_one:schdule

## How to Use of Your Local(ダウンロード後の利用方法)

## License（ライセンス）

## Authors
Michitoshi Nakayama