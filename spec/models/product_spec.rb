require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
    Category.delete_all
    Product.delete_all
    @category1 = Category.create(:name => "Veg")
	@category2 = Category.create(:name => "Non-Veg")
  end

  it "should create product" do
	Product.create(:name => "Pizza", :category_ids => [@category1.id, @category2.id])
	Product.create(:name => "biryani", :category_ids => [@category1.id, @category2.id])
	expect(Product.all.count).to eq(2)
  end

  it "should create only one product" do
  	Product.create(:name => "Pizza", :category_ids => [@category1.id, @category2.id])
	Product.create(:name => "Pizza", :category_ids => [@category1.id, @category2.id])
	expect(Product.all.count).to eq(1)
  end

  it "should create not product" do
  	Product.create(:name => "", :category_ids => [@category1.id, @category2.id])
	expect(Product.all.count).to eq(0)
  end
  
  it "should create not product without category" do
  	Product.create(:name => "pizza", :category_ids => nil)
	expect(Product.all.count).to eq(0)
  end
end
