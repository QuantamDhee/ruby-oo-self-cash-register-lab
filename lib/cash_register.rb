require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @items = []
        @price = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times{self.items << title}
        @price = price
        @quantity = quantity
    end

    def apply_discount
        if @discount != 0 
            @total -= @total * @discount/100 
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @price * @quantity 
    end
end