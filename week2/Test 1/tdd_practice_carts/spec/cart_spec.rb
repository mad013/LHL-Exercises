require_relative "spec_helper"


# What is describe
# What is Cart to describe
# What do end is

describe "Cart" do

  before :each do
    @cart = Cart.new
  end

  describe '#new' do
    it 'should have empty products' do
      expect(@cart.products).to eql([])
    end
  end

  describe '#add_product' do
    it 'should be able to add new products' do
      product = Product.new(name: "Pencil", price_in_cents: 100)
      # cart = Cart.new
      @cart.add_product(product)
      expect(@cart.products).to include product
    end
  end

  describe '#total' do
    it 'should return the total price of all the products in the cart' do
      product = Product.new(name: "Pencil", price_in_cents: 100)
      cart = Cart.new
      cart.add_product(product)
      expect(cart.total).to eql(100)
    end
  end

  describe '#total_with_tax' do
    it 'should return the total price of all the products in the cart with tax' do
      product = Product.new(name: "Pencil", price_in_cents: 100)
      cart = Cart.new
      cart.add_product(product)
      expect(cart).to receive(:tax).and_return(2)
      expect(cart.total_with_tax).to eql(200)
    end
  end

  describe '.shop' do
    it 'should return hello' do
      expect(Cart.shop).to eql("hello")
    end
  end

  describe '#checkout' do
    it 'should allow us to purchase everything in the cart' do
      cart = Cart.new
      expect(cart.purchased).to eql(true)
    end
  end

end
