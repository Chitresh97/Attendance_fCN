class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :student_class
  has_many :class_dates, through: :student_class

  has_many :student_batch
  has_many :batches, through: :student_batch
end
