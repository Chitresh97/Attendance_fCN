ActiveAdmin.register Batch do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :course, :teacher_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs "Details" do
    f.input :name, :lable=>"Name"
    f.input :course, :lable=>"Course"
    f.input :teacher_id, :lable=>"Teacher"
    f.actions
  end
end

end
