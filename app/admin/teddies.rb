ActiveAdmin.register Teddy do

  permit_params :name, :description, :price_cents, :photo_url, :category_id, :sku

end
