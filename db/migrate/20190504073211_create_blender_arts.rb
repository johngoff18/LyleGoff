class CreateBlenderArts < ActiveRecord::Migration[5.2]
  def change
    create_table :blender_arts do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :link

      t.timestamps
    end
  end
end
