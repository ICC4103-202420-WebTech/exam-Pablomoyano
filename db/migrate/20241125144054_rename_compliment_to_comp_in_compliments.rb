class RenameComplimentToCompInCompliments < ActiveRecord::Migration[7.2]
  def change
    rename_column :compliments, :compliment, :comp
  end
end
