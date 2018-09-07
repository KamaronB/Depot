class LineItem < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :order, optional: true
  belongs_to :cart


  def total_price
    product.price * quantity
  end

  def subtract_quantity(amount)

   if amount > 1
     amount = amount -1
   end
  end
end
