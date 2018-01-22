# bill_spec.rb
require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'bill'

describe "Bill" do
  it "Can be created" do
    bill = Bill.new
    # the class of @bill should be Bill
    bill.class.must_equal Bill
  end
end
