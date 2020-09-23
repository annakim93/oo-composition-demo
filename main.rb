require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
anna_order = Order.new(1207)
# Make an instance of Order with ID 1392
simon_order = Order.new(1392)
# Make an instance of Shipment with a tracking no. of 34668
anna_shipment = Shipment.new(34668)
# Make an instance of Shipment with a tracking no. of 66243
simon_shipment = Shipment.new(66243)

# Read the @shipment attribute of order 1207
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"
puts "The tracking number for Anna's shipment is: #{anna_order.shipment}"

# Set the attribute of @shipment in order 1207 to shipment 334668
anna_order.shipment = anna_shipment

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"
puts "The tracking number for Anna's shipment is: #{anna_order.shipment}"

# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
hamled = Merchant.new('Hamled')
# Make an instance of Merchant with name "tildeee"
tildeee = Merchant.new('tildeee')
# Make an instance of Product with name "Sandals"
sandals = Product.new('Sandals')
# Make an instance of Product with name "Fish Oil"
fish_oil = Product.new('Fish Oil')
# Make an instance of Product with name "Bath Salts"
bath_salts = Product.new('Bath Salts')
# Make an instance of Product with name "Almond Flour"
almond_flour = Product.new('Almond Flour')

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"
puts "Current value of Hamled's products is an empty array: #{hamled.products}"

# Shovel the products "sandals" and "fish oil" into Hamled's @products array
hamled.products << sandals
hamled.products << fish_oil
# hamled.products[1] = almond_flour

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"
puts "Current value of Hamled's products is this array: #{hamled.products}"

# What is the data type of Hamled's @products attribute? >> an array
# How do we read the names of every product that Hamled has?
hamled.products.each { |product| puts product.name }

# Optional: Can we refactor that?
