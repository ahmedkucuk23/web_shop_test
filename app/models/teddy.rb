class Teddy < ApplicationRecord
  belongs_to :category
  monetize :price_cents


  def to_s
    name
  end

  def to_builder
    Jbuilder.new do |teddy|
      teddy.price stripe_price_id
      teddy.quantity 1
    end
  end

   after_create do
     product = Stripe::Product.create(name: name)
     price = Stripe::Price.create(product: product, unit_amount: self.price_cents, currency: "usd")
     update(stripe_teddy_id: product.id, stripe_price_id: price.id)
   end


end
