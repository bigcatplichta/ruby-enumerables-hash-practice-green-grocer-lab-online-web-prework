def consolidate_cart(cart)
  final_cart = {}
  
  cart.each do |item|
      item_name = item.key
      
      final_cart[][:count] = 1
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
