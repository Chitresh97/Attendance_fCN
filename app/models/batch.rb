class Batch < ApplicationRecord
  belongs_to :teacher, required: false
  has_many :student_batch
  has_many :students, through: :student_batch
end
