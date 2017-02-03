class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.integer :objectID
      t.string :food_type
      t.decimal :stars_count
      t.integer :reviews_count
      t.string :neighborhood
      t.string :phone_number
      t.string :price_range
      t.string :dining_style
      t.string :name
      t.string :address
      t.string :area
      t.string :city
      t.string :country
      t.string :image_url
      t.string :mobile_reserve_url
      t.integer :payment_options
      t.string :phone
      t.string :postal_code
      t.integer :price
      t.string :reserve_url
      t.string :state
      t.string :_geoloc

      t.timestamps
    end
  end
end
