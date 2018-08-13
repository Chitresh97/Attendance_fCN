class Batch < ApplicationRecord
  belongs_to :teacher
  has_many :student_batch
  has_many :students, through: :student_batch
end
