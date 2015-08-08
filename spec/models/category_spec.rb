require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
    Category.delete_all
  end

  it "should create category" do
	Category.create(:name => "Veg")
	Category.create(:name => "Non-Veg")
	expect(Category.all.count).to eq(2)
  end

  it "should create only one category" do
	Category.create(:name => "Veg")
	Category.create(:name => "Veg")
	expect(Category.all.count).to eq(1)
  end

  it "should create not category" do
	Category.create(:name => "")
	expect(Category.all.count).to eq(0)
  end
end
