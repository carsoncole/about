class Project < ApplicationRecord
  validates :order, presence: true

  acts_as_taggable_on :skills

  attr_accessor :skillset
end
