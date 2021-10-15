class AddStripePriceIdToTeddies < ActiveRecord::Migration[6.0]
  def change
    add_column :teddies, :stripe_price_id, :string
  end
end
