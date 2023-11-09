class Setting < ApplicationRecord
  enum status: [ :available, :not_available ]

  validates :name, presence: true
end
