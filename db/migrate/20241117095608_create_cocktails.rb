class CreateCocktails < ActiveRecord::Migration[7.1]
  def change
    create_table :cocktails do |t|

      t.timestamps
    end
  end
end
