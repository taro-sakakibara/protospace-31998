
## userテーブル
| Colunmn    | Type            | Options           |
| ---------- | --------------- | ----------------- |
| user       | string          | null false        |
| password   | string          | null false        |
| name       | string          | null false        |
| profile    | text            | null false        |
| occupation | text            | null false        |
| position   | text            | null false        |

### Association
- has_many :comments
- has_many :prototypes

## commentsテーブル
| Colunmn    | Type            | Options           |
| ---------- | --------------- | ----------------- |
| text       | text            | null false        |
| user       | references      |                   |
| prototype  | references      |                   |

## Association
- belongs_to :users
- belongs_to prototypes

## userテーブル
| Colunmn    | Type            | Options           |
| ---------- | --------------- | ----------------- |
| title      | string          | null false        |
| cath_copy  | text            | null false        |
| concept    | text            | null false        |
| image      | ActiveStorage   |                   |
| user       | references      |                   |

### Association
- has_many :comments
- belongs_to :users