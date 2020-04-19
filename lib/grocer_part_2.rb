require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    coupon.each do |attribute, value|
      name = coupon[:item]
      binding.pry
      if cart[name] && cart[name][:count] >= attribute[:num]
        if cart ["#{name} W/COUPON"]
          cart["#{name} W/COUPON"][:count] += 1
        else
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], :clearance => cart[name][:clearance], :count => 1}
        end
        cart[name][:count] -= coupon[:num]
      end
    end
  end
  cart
end

# def apply_coupons(cart, coupon)
#   coupons.each do |item|
#     name_of_item = item[:item]
#     if cart.include?(name_of_item) == true && cart[name_of_item][:count] >= item[:num]
#       cart[name_of_item][:count] = cart[name_of_item][:count] - item[:num]
#       new_cart = name_of_item + ("W/COUPON")
#       puts cart.include?(new_item)
#       if cart.include?(new_item) == false
#         cart[new_item] = {:price => item[:cost], :clearance => cart[name_of_item][:clearance], :count => 1}
#       else
#         cart[new_item][:count] += 1
#       end
#     end
#   end
#   cart
# end

# def apply_coupons(cart, coupons)
#   #return cart if coupons == []
#   coupons.each do |coupon|
#     name = coupon[:item]
#     num_of_c = coupon[:num]
#     if cart.include?(name) && cart[name][:count] >= num_of_c
#       cart[name][:count] -= num_of_c
#       if cart["#{name}W/COUPON"]
#         cart["#{name}W/COUPON"][:count] += 1
#       else
#         cart["#{name}W/COUPON"] = {:price => coupon[:cost], :clearance => cart[name][:clearance], :count => 1}
#       end
#     end
#   end
#   cart
# end
#
# def apply_coupons(cart, coupon)
#   coupons.each do |coupon_hash|
#     grocery_item = coupon_hash[:item]
#     new_coupon_hash = {:price => coupon_hash[:cost], :clearance => "true", :count => coupon_hash[:num]}
#     binding.pry
#     if cart.include?(grocery_item)
#       new_coupon_hash[:clearance] = cart[grocery_item][:clearance]
#       if cart[grocery_item][:count] >= new_coupon_hash[:count]
#         new_coupon_hash[:count] = (cart[grocery_item][:count]/new_coupon_hash[:count]).floor
#         cart[grocery_item][:count] = (coupon_hash[:num])%(cart[grocery_item][:count])
#       end
#       cart[grocery_item + "W/COUPON"] = new_coupon_hash
#     end
#   end
#   return cart
# end



  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

def apply_clearance(cart)
  cart.each do |name, hash|
    if hash == [:clearance]
      new_cart[name][:price] = (cart[name][:price]*0.8).round(2)
    end
  end
  cart
end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart


def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
