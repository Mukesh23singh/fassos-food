class Category < ActiveRecord::Base
  has_and_belongs_to_many :products, :join_table => :products_categories, :dependent => :destroy
  validates :name, presence: true, uniqueness: {:case_sensitive => false}
end
