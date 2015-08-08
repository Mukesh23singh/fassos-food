class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories, :join_table => :products_categories, :dependent => :destroy
  validates :name, presence: true, uniqueness: {:case_sensitive => false}
end
