
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    @last_transaction = []

    def initialize(discount = 100)
        @total = 0 
        @items = []
        @discount = discount
    end

    # def discount 
    #     @discount
    # end

    def total 
        @total
    end

    def add_item(title, price, quantity = 1)
        last_transaction = []
        i = 0
        while i < quantity do
            @items << title
            i += 1 
        end

        @total += price * quantity
        @last_transaction = [title, price, quantity]
    end

    def apply_discount
        if @discount != 100 
            @total -= @total * discount/100.0
            return "After the discount, the total comes to $#{@total.to_i}."
        else 
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        items.delete(last_transaction[0])
        @total -= last_transaction[1] * last_transaction[2]
    end







end
