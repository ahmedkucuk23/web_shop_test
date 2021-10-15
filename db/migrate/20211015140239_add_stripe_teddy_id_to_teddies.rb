class AddStripeTeddyIdToTeddies < ActiveRecord::Migration[6.0]
  def change
    add_column :teddies, :stripe_teddy_id, :string
  end
end
