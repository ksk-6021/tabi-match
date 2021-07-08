# たびマッチ
# アプリケーション概要
旅を募集し、仲間を募ることのできる旅専用のアプリケーションです。
募集されている内容に対して、興味を持てば投稿者にメッセージを送ることができます。
 
# App URL
https://tabi-match.herokuapp.com/

# テスト用アカウント
### Basic認証
- ID kisn
- Pass 2147
### アカウント1
- name: 旅太郎
- email: hoge@gmail.com
- password: 111aaa
### アカウント2
- name: 旅二郎
- email: fuga@gmail.com
- password: 111aaa

# 利用方法
1.アクセスするとトップページに遷移

2.ヘッダーのログインボタンをクリックし、3.ログイン画面へ遷移した上で、上記テスト用アカウント1でログイン

### 投稿されたコンテンツ
1.新着情報下にある投稿されているコンテンツをクリックすると投稿詳細ページへ遷移
  - 投稿ユーザーであれば、編集・削除が可能
  - 他ユーザーであれば、メッセージを送ることが可能

2.「コメントする(ルームを作成する)」をクリックするとルーム作成ページへ遷移

3.ルーム名に任意の名前を入力し、ルームメンバーをアカウント2の「旅二郎」を選択し、「ルームを作成する」をクリックすると、アカウント1のユーザー詳細ページへ遷移
  - ユーザーのプロフィール、募集記事、ルーム情報(他ユーザーでは閲覧不可)が閲覧できる
  - 投稿内容下の記事をクリックすると投稿詳細ページへ遷移可能

4.「トーク」文字の下のルームをクリックすると、メッセージページへ遷移
  - メッセージを作成からメッセージの記述、画像ボタンから画像の選択、送信ボタンでメッセージ・画像の送信ができる
  - 左上のボタンでページが戻り、右上の「ルームを削除する」をクリックすると、ルームが削除される
### ユーザープロフィール
1.トップページのユーザープロフィールの編集ボタンをクリックするとユーザー編集ページへ遷移
  - 新規登録時にはない、ユーザー写真と自己紹介文が追加で編集可能

2.トップページのユーザープロフィールの詳細ボタンをクリックすると、アカウント1のユーザー詳細ページへ遷移

### 目指した課題解決
このアプリケーションを利用することで、旅に変化を求めている方や、旅仲間を探している方などは、普段の一人旅、仲の良い友人との旅とは違う体験をすることができる。旅をするのがより楽しくなる。

### 洗い出した要件
- 旅を募集できるようにする
- 旅情報を閲覧できる
- 相手に連絡できる
- 自分とは違うプランの立て方をする人と旅をする
- 旅仲間を増やす
- 旅のレパートリーを増やす



# 実装した機能について

### ユーザー新規登録/ログインページ
[![Image from Gyazo](https://i.gyazo.com/22e6c6cf3ba8437248c5765ae23cb274.gif)](https://gyazo.com/22e6c6cf3ba8437248c5765ae23cb274)

### トップページ(アカウント1ログイン後)
<a href="https://gyazo.com/d753b700344bb243059b243181099fb7"><img src="https://i.gyazo.com/d753b700344bb243059b243181099fb7.gif" alt="Image from Gyazo" width="1000"/></a>

### 投稿詳細ページ
[![Image from Gyazo](https://i.gyazo.com/0dfe42f66a92e1fdf68e647f859bc88f.gif)](https://gyazo.com/0dfe42f66a92e1fdf68e647f859bc88f)

### ルーム作成ページ/ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/b16d4f4778fe0b35dfce2774703cc670.gif)](https://gyazo.com/b16d4f4778fe0b35dfce2774703cc670)

### メッセージ一覧/投稿ページ
[![Image from Gyazo](https://i.gyazo.com/1a49ac4923883225c2b62aa503015aa7.gif)](https://gyazo.com/1a49ac4923883225c2b62aa503015aa7)

### メッセージ投稿
[![Image from Gyazo](https://i.gyazo.com/6ba25fa69537986aee23b775c454a1ff.gif)](https://gyazo.com/6ba25fa69537986aee23b775c454a1ff)

### ユーザー編集ページ
[![Image from Gyazo](https://i.gyazo.com/bc80cd6efe846fc35b8e888ab354f7fd.gif)](https://gyazo.com/bc80cd6efe846fc35b8e888ab354f7fd)

# 機能一覧
| 機能               | 概要                                                                  | 
| ----------------- | --------------------------------------------------------------------- |
| ユーザー管理機能     | 新規登録・ログイン・ログアウトが可能                                        |
| 投稿機能            | 旅の募集内容を投稿可能                                                   |
| 投稿詳細表示機能     | 各投稿の詳細が詳細ページで閲覧可能                                          |
| 投稿編集・削除機能   | 投稿者本人のみ投稿の編集・削除可能                                          | 
| ユーザー詳細表示機能  | 各ユーザーのプロフィール・投稿一覧が閲覧可能、投稿者本人であればルーム一覧閲覧可能  |
| ユーザー情報編集機能  | ログイン中のユーザー本人であればプロフィール編集可能                           |
| ルーム作成機能       | 投稿に紐づくユーザーとのルーム作成可能                                      |
| ルーム削除機能       | ルーム内のユーザーはルームの削除可能                                        |
| メッセージ機能       | メッセージページでメッセージと画像を送信可能                                 |

# 実装予定の機能
- いいね機能(ユーザー名を表示予定)
- タグ機能(タグ付けをし、検索機能を追加予定)

# データベース設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| introduction       | text   |                           |

### Association

- has_many :posts
- has_many :likes
- has_many :room_users
- has_many :rooms through: :room_users
- has_many :messages


## posts テーブル

| Column              | Type       | Options                       |
| ------------------- | ---------- | ----------------------------- |
| trip_date           | string     | null: false                   |
| place               | string     | null: false                   |
| title               | string     | null: false                   |
| content             | text       | null: false                   |
| user                | references | null: false, foreign_key: true|


### Association

- has_many :post_tag_relations
- has_many :tags through: :post_tag_relations
- has_many :likes
- belongs_to :user

## rooms テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column         | Type       | Options                       |
| -------------- | ---------- | ----------------------------- |
| content        | string     |                               |
| room           | references | null: false, foreign_key: true|
| user           | references | null: false, foreign_key: true|

### Association

- belongs_to :room
- belongs_to :user


# ローカルでの動作方法  
$ git clone https://github.com/ksk-6021/tabi-match.git  
$ cd tabi-match  
$ bundle-install  
$ rails db:create  
$ rails db:migrate  
$ rails s  
http://localhost:3000

# 開発環境
- VScode
- Ruby 2.6.5
- Rails 6.0.4
- mysql2
- JavaScript
- gem 3.0.3
- heroku 7.56.0


