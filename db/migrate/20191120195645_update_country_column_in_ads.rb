class UpdateCountryColumnInAds < ActiveRecord::Migration[5.2]
  def change
    rename_column :ads, :country, :country_name
  end
end
