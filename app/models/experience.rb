class Experience < ApplicationRecord
  validates :start_date, :order, presence: true
  acts_as_taggable_on :skills

  attr_accessor :skillset
end
