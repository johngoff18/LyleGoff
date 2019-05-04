class CreateMobileApps < ActiveRecord::Migration[5.2]
  def change
    create_table :mobile_apps do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :store_link

      t.timestamps
    end
  end
end
