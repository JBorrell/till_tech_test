require 'order'
require 'total'

# User Stories
#
# As a customer
# So I can select the food I want
# I want to see a menu with prices
#
# As a customer
# So that I can order the food I want
# I would like to place an order(2 x Cafe Latte, 1 x Bluberry Muffin, 1 x Choc Mudcake)
#
# As a customer
# So that I can pay the correct amount
# I would like to see the total cost of my order

describe 'Till' do
  subject(:order){ Order.new }
  it 'Customer places order & receives total' do
    order.place_order("Americano", 4)
    order.place_order("Tiramisu", 2)
    order.place_order("Blueberry Muffin", 5)
    expect(order.calculate_total).to eq(63.07)
    # 58.05
    # 5.02
  end
end
