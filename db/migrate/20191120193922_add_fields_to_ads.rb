class AddFieldsToAds < ActiveRecord::Migration[5.2]
  def change
    add_column :ads, :title, :string
    add_column :ads, :city, :string
    add_column :ads, :country, :string
    add_column :ads, :price_per_hour, :string
    add_column :ads, :price_per_night, :string
  end
end