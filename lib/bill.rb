# bill.rb
class Bill
  attr_reader :price_list, :subtotal

  def initialize(list)
    @price_list = list
  end

  def subtotal
    if @price_list.length == 0
      return "No Bill Required"
    end

    # @subtotal = 0
    # @price_list.each do |price|
    #   @subtotal += price
    # end
    # return @subtotal
    # or
    @price_list.sum
  end

  def tax
    return subtotal * 0.08
  end

end
