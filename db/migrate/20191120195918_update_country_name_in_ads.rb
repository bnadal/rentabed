class UpdateCountryNameInAds < ActiveRecord::Migration[5.2]
  def change
    rename_column :ads, :country_name, :location
  end
end
