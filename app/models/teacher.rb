class Teacher < ApplicationRecord
  belongs_to :house
  has_many :appointments
  has_many :students, through: :appointments

  validates :name, presence: true
end
