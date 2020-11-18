class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text, null: false
      t.references :user, foreign_key: true
      t.references :prototype, foreign_key: true
      
      belongs_to :user
      belongs_to :prototype

      t.timestamps
    end
  end
end
