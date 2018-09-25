class House < ApplicationRecord
  has_many :students, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :points, numericality: { only_integer: true }
end
