class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.integer :comment_id
      t.integer :protospace_id
      t.text :text
      t.references     :user, foreign_key: true
      t.references     :prototype, foreign_key: true
      t.timestamps
    end
  end
end
