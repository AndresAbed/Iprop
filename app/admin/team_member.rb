ActiveAdmin.register TeamMember do
  permit_params :name, :position, :text, :avatar
  menu label: "Equipo"
  index do
    selectable_column
    id_column
    column :name
    column :position
    column :text
    column :created_at
    actions
  end

  filter :name
  filter :position
  filter :text
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :position
      f.input :text
      f.input :avatar
    end
    f.actions
  end

end
