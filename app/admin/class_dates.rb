ActiveAdmin.register ClassDate do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :room, :topic, :class_time, :batch_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs "Class Details" do
    f.input :batch, :lable=>"Batch"
    f.input :room, :lable=>"Room"
    f.input :topic, :lable=>"Topic"
    f.input :class_time, as: :datepicker
    f.actions
  end
end
end
