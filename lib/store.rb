class Store < ActiveRecord::Base
  has_many :employees  

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparel

  before_destroy :can_destroy_only_stores_with_no_employees

  def must_carry_apparel 
    if !mens_apparel && !womens_apparel
      errors[:base] << "store must carry either mens or women's apparel"
    end
  end

  private
    def can_destroy_only_stores_with_no_employees
      if self.employees.length != 0
        return false
      end
    end


end
