class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :cath_copy, null: false
      t.text :concept, null: false
      t.references :user, foreign_key: true

      has_many :comments
      belongs_to :user
      has_one_attached :image



      t.timestamps
    end
  end
end
