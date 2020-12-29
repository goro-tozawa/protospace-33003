# # users テーブル

|  Column | Type | Options |
| ------------ | ------- | ---------- |
| email      | string | null: false |
| password | string | null: false |
| name      | string | null: false |
| profile    | text  | null: false |
| occupation | text | null: false |
| position | text | null: false | 

### Association
- has_many : comments
- has_many : prototypes, through: :comments




## prototypes テーブル
|  Column | Type | Options |
| ------------ | ------- | ---------- |
| title      | string | null: false |
| catch_copy | text | null: false |
| concept      | text | null: false |
| image    | ActiveStorage | ------- |#optionsの記述は保留
| user | references | null: false  |

### Association
- has_many : comments
- has_many : users, through: :comments

## commentsテーブル

|  Column | Type | Options |
| ------------ | ------- | ---------- |
| text      | text | null: false |
| user | references | null: false |
| prototype |  references  | -------- | #optionsの記述は保留

### Association
- belongs_to :users
- belongs_to :prototypes
-