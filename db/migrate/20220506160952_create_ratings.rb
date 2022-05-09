class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end
end
