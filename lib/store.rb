class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_apparel
  has_many :employees  

  def must_carry_apparel 
    if !mens_apparel && !womens_apparel
      errors[:base] << "store must carry either mens or women's apparel"
    end
  end
end
