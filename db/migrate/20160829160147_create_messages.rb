class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email, null: false
      t.integer :zip
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
