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


## likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post


## tags テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false, unique: true      |

### Association

- has_many :post_tag_relations
- has_many :posts, through: :post_tag_relations



## post_tag_relations テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| tag    | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :tag
- belongs_to :post


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
| message        | text       |                               |
| room           | reference  | null: false, foreign_key: true|
| user           | references | null: false, foreign_key: true|

### Association

- belongs_to :room
- belongs_to :user

