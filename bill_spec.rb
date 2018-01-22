# bill_spec.rb
require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'bill'

describe "Bill" do
  it "can be created" do
    bill = Bill.new([4.75, 8.75])
    # the class of @bill should be Bill
    bill.class.must_equal Bill
  end

  it "will raise an error if created without a list of prices" do
    proc {
      Bill.new
    }.must_raise ArgumentError
    proc {
      Bill.new([])
    }.must_raise ArgumentError
    proc {
      Bill.new(1)
    }.must_raise ArgumentError
  end
end
