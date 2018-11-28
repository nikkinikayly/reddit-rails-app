class Topic < ApplicationRecord
  belongs_to :sub
  # always plural
  has_many :comments
  
  # singular
  # has_one :comment
end
