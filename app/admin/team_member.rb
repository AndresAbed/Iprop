ActiveAdmin.register TeamMember do
  permit_params :name, :position, :text, :avatar
  menu label: "Equipo"
  index do
    selectable_column
    id_column
    column :name
    column :position
    column :created_at
    actions
  end

  action_item :view, only: :show do
    link_to 'Volver', admin_team_members_path
  end

  show do
    attributes_table do
      row :name
      row :position
      row :text
      row :created_at
    end
  end

  filter :name
  filter :position
  filter :created_at

  form do |f|
    f.inputs "Detalles del Integrante" do
      f.input :name
      f.input :position
      f.input :text
      f.input :avatar
    end
    f.actions
  end

end
