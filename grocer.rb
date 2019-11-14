require 'pp'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  while i < collection.length do 
    if collection[i][:item] == name
      return collection[i]
    end
    i += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.i=
  final_cart=[]
  i = 0
  while i < cart.length do
    item_name = cart[i][:item]
    
    
    item_in_cart = find_index_by_name_in_collection(item_name)
    if item_in_cart:
      final_cart << {item_in_cart}
    else
      index = find_index_by_name_in_collection(item_name, final_cart)
      final_cart[index][:count] += 1
    end
    i += 1
  end
  final_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < coupons.length do
    n = 0
    item_name = coupons[i][:item]
    while n < cart.length do
     if cart[n][item_name]
       cart << {:item => "#{item_name} w/COUPON", :price => coupons[i]}
       
       cart << coupons[i]
     end
     n += 1
    end
     i += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

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
