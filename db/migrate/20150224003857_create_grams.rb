class CreateGrams < ActiveRecord::Migration
  def change
    create_table :grams do |t|
      t.integer :user_id
      t.string :photo

      t.timestamps null: false
    end
  end
end
