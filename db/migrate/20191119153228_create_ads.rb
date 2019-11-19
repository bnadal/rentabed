class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.text :description
      t.string :image
      t.references :user
      t.string :status

      t.timestamps
    end
  end
end
