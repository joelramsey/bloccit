class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.text :copy
      t.string :price
      t.string :integer

      t.timestamps null: false
    end
  end
end
