class CashRegister
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end
    attr_accessor :total, :discount
    attr_reader :items
    def add_item(title, price, quantity = 1)
        quantity.times { @items.push(title) }
        @old_total = @total
        @total += price*quantity
    end
    def apply_discount
        if discount
            @total = @total - @total*(@discount/100.00)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
        @total = @old_total
    end
end
