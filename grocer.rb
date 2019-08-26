def consolidate_cart(cart)
  final_cart = {}
  
  cart.each do |item|
      item[:count] = 1
      final_cart = final_cart[item]  
  end 
  return final_cart 
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
