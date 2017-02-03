class RemovePaymentOptionsFromRestaurant < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :payment_options, :integer
  end
end
