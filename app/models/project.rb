class Project < ApplicationRecord
  validates :order, presence: true
end
