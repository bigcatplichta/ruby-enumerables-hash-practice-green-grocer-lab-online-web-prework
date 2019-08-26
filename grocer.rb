def consolidate_cart(cart)
  final_cart = {}
  
  cart.each do |item|
      item_name = item.keys
      attributes = item.values
        if final_cart[item_name]
          final_cart[item_name][:count] += 1
        else 
          final_cart[item_name] = attributes
          final_cart[:count] = 1
        end 
  end 
  final_cart 
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
