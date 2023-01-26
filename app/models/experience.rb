class Experience < ApplicationRecord
  validates :start_date, presence: true
  acts_as_taggable_on :skills

  attr_accessor :skillset
end