class AddPaymentOptionsToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :payment_options, :string
  end
end
