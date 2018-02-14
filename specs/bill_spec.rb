# bill_spec.rb
require "minitest/autorun"
require "minitest/reporters"
require_relative "../lib/bill.rb"

# adds color to minitest
Minitest::Reporters.use!

describe "Bill" do
  # This runs during every test
  before do
    @bill = Bill.new([2.4, 5.7, 8.9])
  end

  # is a test
  it "can be created" do # describes what the test is going to do
    # bill = Bill.new([2.4, 5.7, 8.9]) # providing fake numbers for the nominal case
    # the class of @bill should be Bill
    @bill.class.must_equal Bill
    # checks to make sure 2 can be made
    2.must_equal 2.0
    # checks that an instance can be created
    @bill.must_be_instance_of Bill
  end
## Subtotal
  it "can calculate the subtotal" do
    # arrange situation
    # bill = Bill.new([2.4, 5.7, 8.9])
    # act
    subtotal = @bill.subtotal
    # assert
    subtotal.must_equal (2.4 + 5.7 + 8.9)
  end

  it "can calculate the subtotal with negative numbers" do
  # arrange situation
    bill = Bill.new([-2.4, 5.7, -8.9])
    # act
    subtotal = bill.subtotal
    # assert
    subtotal.must_equal (-2.4 + 5.7 + -8.9)
  end

  it "can calculate the subtotal with an empty array" do
    # arrange
    bill = Bill.new([])
    # act
    subtotal = bill.subtotal
    # assert
    subtotal.must_equal "No Bill Required"
  end

## Tax
  it "can calculate tax for subtotal" do
    # skip # <= skipping the test
    # arrange
    # bill = Bill.new(2.4 + 5.7 + 8.9)
    # act
    tax = @bill.tax
    # assert => don't use float numbers because of rounding of float numbers
    tax.must_equal (@bill.subtotal * 0.08)
  end

## Total
  it "can calculate the total" do
    skip
    # arrange
    # act
    total = @bill.total
    #assert
    total.must_equal @bill.subtotal + @bill.tax
  end

end
