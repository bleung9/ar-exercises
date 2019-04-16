class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
  validates :store_id, presence: true

  before_save :gen_password 

  private
    def gen_password
      chars = "qwertyuiopasdfghjklzxcvbnm"
      pass = ""
      (0..7).each do |idx|
        pass = pass + chars[rand(25)]
      end
      self.password = pass
    end

end
