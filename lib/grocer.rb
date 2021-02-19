def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    item.each do |key, value|
      if value == name
        return item
      end
    end
  end
  nil
end

def consolidate_cart(cart)
  new_cart = []
  cart.each do |product|
      if new_cart.include?(product[:item])
        new_cart << product
        new_cart[product][:count] += 1
      else
        new_cart << {
          :item => product[:item],
          :price => product[:price],
          :clearance => product[:clearance],
          :count => 1
        }
      end
  end
  new_cart
end
