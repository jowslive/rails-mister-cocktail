class AddBootstrapColorToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :bootstrap_color, :string
  end
end
