class Rate < ApplicationRecord
  belongs_to :course, required: false
end
