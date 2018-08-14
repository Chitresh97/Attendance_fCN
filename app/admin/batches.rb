ActiveAdmin.register Batch do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :course, :teacher_id, student_batch_attributes: [:id,:student_id,:batch_id, :_destroy]
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs "Batch Details" do
    f.input :name, :lable=>"Name"
    f.input :course, :lable=>"Course"
    f.input :teacher_id, :lable=>"Teacher"
    f.has_many :student_batch, allow_destroy: true do |n_f|
      n_f.input :student
    end

    f.actions
  end
end

end
