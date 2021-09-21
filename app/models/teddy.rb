class Teddy < ApplicationRecord
  belongs_to :category
  monetize :price_cents

  monetize :amount_cents
end
