# bill.rb

class Bill
  def initialize(prices)
    if !(prices.is_a? Array) || prices.length < 1
      raise ArgumentError.new("Bill requires a non-empty array")
    end
    @prices = prices
  end

  def subtotal
    return @prices.reduce(0, :+)
  end
end
