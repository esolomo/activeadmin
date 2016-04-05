ActiveAdmin.register Project do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


  index do
    column :title do |project|
      link_to project.title, admin_project_path(project)
    end

    actions
  
  end

  # Filter only by title
  filter :title

 
end
