class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200 }
  validates :store_id, presence: true
  belongs_to :store
end
