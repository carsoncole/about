class Experience < ApplicationRecord
  validates :start_date, :order, :title, :name, presence: true
  acts_as_taggable_on :skills

  attr_accessor :skillset
end
