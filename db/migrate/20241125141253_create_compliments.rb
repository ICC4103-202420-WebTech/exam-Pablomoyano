class CreateCompliments < ActiveRecord::Migration[7.2]
  def change
    create_table :compliments do |t|
      t.string :compliment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
