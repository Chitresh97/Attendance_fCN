class Student::ParameterSanitizer < Devise::ParameterSanitizer
def initialize(*)
  super
  permit(:sign_up, keys: [:name])
end
end
