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

# アプリ名
ArtWeb
https://artweb-app.herokuapp.com/

## アプリケーション概要
都内で開催予定または開催中の展覧会情報の集約と展覧会来場者からの感想を直接投稿できるアプリケーションです。

## テスト用アカウント
Basic認証: admin
  認証Password: 2222

ID: test@mail.com
  Password: abc123

## 利用方法
テスト用アカウントでログイン→トップページ「POST ABOUT YOUR EXHIBITION」→展覧会情報登録ページ→トップページ展覧会一覧→詳細ページにて詳細の確認やコメントができます。
また、トップページ上部より展覧会名の検索を行うことが可能です。

## 制作背景
個人的に大学時代美術の研究や、美術館・博物館の学芸員資格を取得した経緯から一般の人々に美術を広めることや学芸員に役の立つアプリケーションの開発ができればと考えていました。
私の大学時代、そして現在でもそのような側面があると思いますが、展覧会を開催する側と来場する側の交流が希薄で、そのために相互作用が生まれていないケースがあります。
古くは貴族が世界各地から収集したコレクションや自分の雇った画家に描かせた絵画等を陳列するところから始まった博物館・美術館ですが、現在ではどのような文脈の中で作品を展示し来場者に解釈してもらうかということが重要になってきています。このような前提がある中で開催側が一方的に展示したいものを並べるのではなく、来場者が展覧会に何を求めているのか、何を感じ取っているのかを理解する交流の場、情報提供の場が必要ではと考えました。美術展開催者が来場者の声を直接聞ける場を増やし、より来場者にとって有意義な時間を過ごせるような展示づくりやワークショップの開催につなげて欲しい、展覧会について感想・意見を投稿できるようなアプリケーションを作ろうと思いました。また、データが重視される世の中になっている一方で、アートを鑑賞することで養われる感性に最近注目が集まっています。それは何か人よりも抜きん出た判断を下すために、データで得られた事実に基づいた上で感性や直感が必要とされているからです。そうした背景もあり、より多くの人々に展覧会へ足を運んでいただき様々な感情を想起させられる体験をしてもらいたいと考え、都内で開催中の展覧会情報について閲覧・検索することのできる機能をつけています。

## DEMO
 ### ユーザー登録機能
 [![Image from Gyazo](https://i.gyazo.com/39244e569f392482819a3f3e4bfcf1ba.gif)](https://gyazo.com/39244e569f392482819a3f3e4bfcf1ba)
 [![Image from Gyazo](https://i.gyazo.com/68594cb472f561fc3d424b3bb7a548a9.gif)](https://gyazo.com/68594cb472f561fc3d424b3bb7a548a9)
 ユーザーの登録を行えるようにする。アカウントの作成。
  #### 詳細
  ユーザー名、メールアドレス、パスワードでユーザーの新規登録を行えるようにする。
  #### ユースケース
  展覧会の開催者および来場者はトップページの新規登録ボタンよりユーザー登録を行い、このアプリケーションの各種機能を利用することができる。
  
  
 ### ユーザーログイン機能
 [![Image from Gyazo](https://i.gyazo.com/4cb1f8302943bd9f0c0e345eeafd86d1.gif)](https://gyazo.com/4cb1f8302943bd9f0c0e345eeafd86d1)
 [![Image from Gyazo](https://i.gyazo.com/8af05f599f2f57123a822c00a7396d46.gif)](https://gyazo.com/8af05f599f2f57123a822c00a7396d46)
 作成したアカウントでログインをして情報の登録等できるようにする。
  #### 詳細
  メールアドレスとパスワードの入力でログインすることができる。
  #### ユースケース
  ユーザー登録機能と同様、トップページよりログインボタンでログイン画面に遷移しメールアドレスとパスワードの入力でログインが可能。
  
  
 ### 展覧会情報登録機能
 [![Image from Gyazo](https://i.gyazo.com/6c26d37dfafd0f4da4f1ee9049d82905.gif)](https://gyazo.com/6c26d37dfafd0f4da4f1ee9049d82905)
 [![Image from Gyazo](https://i.gyazo.com/0bfb6ad0f67e7fe6088af0d488878122.gif)](https://gyazo.com/0bfb6ad0f67e7fe6088af0d488878122)
 [![Image from Gyazo](https://i.gyazo.com/f9f62ebeb093c702f67039355c714b9c.gif)](https://gyazo.com/f9f62ebeb093c702f67039355c714b9c)
 ユーザーが展覧会の情報を登録できるようにする。
  #### 詳細
  展覧会名、日時、場所、展覧会の内容、カテゴリー、展覧会ウェブサイト等を入力し、展覧会リーフレットの画像とともに情報の登録ができる。
  #### ユースケース
  ユーザー登録を行った開催者（美術館側）が開催予定もしくは開催中の展覧会情報を入力し、登録をすることができる。必須登録情報は画像、展覧会名、日時、場所、内容説明文、カテゴリー、市区町村、入場料、最寄駅、ウェブサイト。ログインしていないと登録はできない。
  展覧会情報の登録者（開催者）とログインユーザーが一致していれば展覧会情報を削除できるボタンが詳細ページに表示される。ログインしていないユーザー、開催者以外には表示されない。展覧会終了後等に削除してもらうための機能。
  
  
 ### 展覧会情報一覧機能 
 [![Image from Gyazo](https://i.gyazo.com/f9f62ebeb093c702f67039355c714b9c.gif)](https://gyazo.com/f9f62ebeb093c702f67039355c714b9c)
 展覧会の概要を一覧で見ることができるようにする。
  #### 詳細
  トップページで開催中の展覧会の概要が画像、展覧会名、場所、日時の情報とともに一覧で表示がされる。
  #### ユースケース
  トップページにて展覧会のリーフレット画像が大きく表示され、下に展覧会名、場所、日時が表示される。このページはユーザー登録やログインがなくても見ることができる。
  
  
 ### 展覧会情報詳細機能 
 [![Image from Gyazo](https://i.gyazo.com/d1eb7b0a0bcd62e27b92c961f42971d8.gif)](https://gyazo.com/d1eb7b0a0bcd62e27b92c961f42971d8)
 一覧から詳細な展覧会情報を見ることができるようにする。
  #### 詳細
  展覧会情報登録機能で登録した情報がすべて詳細として閲覧することができる。
  #### ユースケース
  トップページの展覧会情報をクリックすると詳細な情報が表示される。登録済みの情報のすべてがここで閲覧可能。このページはユーザー登録やログインがなくても見ることができる。
  
  
 ### 展覧会情報削除機能
 [![Image from Gyazo](https://i.gyazo.com/b1d2818bc513fd36d2c15bea98826b5e.gif)](https://gyazo.com/b1d2818bc513fd36d2c15bea98826b5e)
 すでに登録済みの展覧会情報を削除できるようにする。
  #### 詳細
  一度登録した展覧会情報を詳細ページから削除することができる。
  #### ユースケース
  展覧会情報の登録者（開催者）とログインユーザーが一致していれば展覧会情報を削除できるボタンが詳細ページに表示される。ログインしていないユーザー、開催者以外には表示されない。展覧会終了後等に削除してもらうための機能。
  
  
 ### 展覧会情報編集機能
 [![Image from Gyazo](https://i.gyazo.com/71d8f6bf14910c952c59e7e47df4e9bf.gif)](https://gyazo.com/71d8f6bf14910c952c59e7e47df4e9bf)
 [![Image from Gyazo](https://i.gyazo.com/6bc8748ce3ecd9f8d827d37944841415.gif)](https://gyazo.com/6bc8748ce3ecd9f8d827d37944841415)
 すでに登録済みの展覧会情報を修正できるようにする。
  #### 詳細
  一度登録した展覧会情報を詳細ページから編集することができる。
  #### ユースケース
  展覧会情報の登録者（開催者）とログインユーザーが一致していれば展覧会情報を編集できるボタンが詳細ページに表示される。ログインしていないユーザー、開催者以外には表示されない。誤った情報を掲載してしまった際に修正するための機能。
  
  
 ### 展覧会コメント機能
 [![Image from Gyazo](https://i.gyazo.com/3987ad678cdfdc4d4d56988f7cfd4760.gif)](https://gyazo.com/3987ad678cdfdc4d4d56988f7cfd4760)
 各展覧会に対してコメントを投稿できるようにする。
  #### 詳細
  展覧会への感想を詳細ページより投稿することができる。
  #### ユースケース
  ログインしたユーザー（来場者）が展覧会に対しての感想等を投稿するための機能。詳細ページ下部に投稿フォームとボタンがあり、そちらから投稿が可能。
  
  
 ### 展覧会コメント削除機能
 [![Image from Gyazo](https://i.gyazo.com/2bee9473d87614a9403c29a92375607e.gif)](https://gyazo.com/2bee9473d87614a9403c29a92375607e)
 コメントを削除できるようにする。
  #### 詳細
  詳細ページにて投稿したコメントを削除することができる。
  #### ユースケース
  ユーザーが投稿したコメントをボタンを押すことで削除する。
  
  
 ### 展覧会検索機能
 [![Image from Gyazo](https://i.gyazo.com/bfe1c4d65d43a32bc64dacbfdf838c19.gif)](https://gyazo.com/bfe1c4d65d43a32bc64dacbfdf838c19)
 展覧会を検索し絞り込めるようにする。
  #### 詳細
  展覧会を検索し、一覧から絞り込むことができるようにする。
  #### ユースケース
  トップページより展覧会名を入れることで検索ができるようにする機能。

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/ca264c87f40692d0faf723da6823a469.png)](https://gyazo.com/ca264c87f40692d0faf723da6823a469)

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
