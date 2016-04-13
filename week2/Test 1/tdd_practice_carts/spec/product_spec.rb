require_relative "spec_helper"

# Test public methods

# What is describe
# What is Product to describe
# What do end is

describe "Product" do

  describe '#new' do

    it 'should be able to create a new product' do
      product = Product.new(name:"Book", price_in_cents:100)
      expect(product.name).to eql("Book")
      expect(product.price_in_cents).to eql(100)
    end

    it 'should raise error if name or price are nil' do
      expect {
        product = Product.new
      }.to raise_error
    end

  end

end
