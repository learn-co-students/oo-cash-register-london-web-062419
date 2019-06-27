require 'pry'


# CashRegister


#   ::new
#     sets an instance variable @total on initialization to zero (FAILED - 1)
#     optionally takes an employee discount on initialization (FAILED - 2)




    


# #     Add items of varying quantities and prices
# # Calculate discounts
# # Keep track of what's been added to it
# # Void the last transaction






class CashRegister
    
    attr_accessor :discount, :total, :items
    
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
      @transactions = []
    end
  
     
  
     def add_item(title, price, quantity = 1)
      @total += (price * quantity)
      quantity.times { @items << title }
      @transactions <<  price * quantity
    end
  

     def apply_discount
      new_total = @total -= (total * @discount) / 100
  
       if @discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{new_total}."
      end
    end
  
     def void_last_transaction
      @total -= @transactions.last
    end
  end


    

    
    
    
    
    
