class ClassDate < ApplicationRecord
  has_many :student_class
  has_many :students, through: :student_class
  belongs_to :batch
end
