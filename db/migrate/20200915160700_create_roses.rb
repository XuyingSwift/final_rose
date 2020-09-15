class CreateRoses < ActiveRecord::Migration[6.0]
  def change
    create_table :roses do |t|
      t.string :name
      t.string :meaning
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
