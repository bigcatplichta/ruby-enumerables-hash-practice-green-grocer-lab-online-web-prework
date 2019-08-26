def consolidate_cart(cart)
  final_cart = {}
  
  cart.each do |item|
      item_name = item.keys[0]
      attributes = item.values[0]
        if final_cart[item_name]
          final_cart[item_name][:count] += 1
        else 
          final_cart[item_name] = {
            count: 1, 
            price: attributes[:price],
            clearance: attributes[:clearance]
          }
          
        end 
  end 
  final_cart 
end

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
    item = coupon[:item]
    if cart[item] && cart[item][:count] >= coupon[:num] && !cart["#{item} W/COUPON"]
      cart["#{item} W/COUPON"] = {price: coupon[:cost] / coupon[:num], clearance: cart[item][:clearance], count: coupon[:num]} 
      cart[item][:count] -= coupon[:num]
    elsif cart[item] && cart[item][:count] >= coupon[:num] && cart["#{item} W/COUPON"]
      cart["#{item} W/COUPON"][:count] += coupon[:num]
      cart[item][:count] -= coupon[:num]
    end
  end 
  cart
end

def apply_clearance(cart)
  cart.collect do |name, attributes|
    if attributes[:clearance]
  end 
end

def checkout(cart, coupons)
  # code here
end
