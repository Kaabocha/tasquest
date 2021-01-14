# DB 設計

## users table

| Column                     | Type                | Options                              |
|----------------------------|---------------------|--------------------------------------|
| email                      | string              | null: false, unique: true            |    <メールアドレス>
| password                   | string              | null: false                          |    <パスワード>
| name                       | string              | null: false                          |    <名前>
| a_word                     | text                | null: false                          |    <一言>
| title                      | text                |                                      |    <称号>

### Association
has_many :tasks
has_many :comments


## tasks table

| Column                                 | Type       | Options                           |
|----------------------------------------|------------|-----------------------------------|
| task_text                              | string     | null: false                       |    <テキスト>
| user                                   | references | foreign_key: true                 |    <user_id>
| good                                   | ??????     | ????????                          |    <いいね>

### Association
belongs_to :user
has_one :comment


## comments table

| Column             | Type          | Options                                               |
|--------------------|---------------|-------------------------------------------------------|
| comment_text       | string        | null: false                                           |    <テキスト>
| task               | references    | foreign_key: true                                     |    <task_id>

### Association
belongs_to :task
