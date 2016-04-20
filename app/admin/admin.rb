ActiveAdmin.register Admin do
  permit_params :name, :last_name, :email, :password, :password_confirmation
  menu label: "Administradores"
  index do
    selectable_column
    id_column
    column :name
    column :last_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  action_item :view, only: :show do
    link_to 'Volver', admin_admins_path
  end

  show do
    attributes_table do
      row :name
      row :last_name
      row :email
      row :created_at
      row :current_sign_in_at
      row :sign_in_count
    end
  end

  filter :name
  filter :last_name
  filter :email
  filter :created_at
  filter :current_sign_in_at
  filter :sign_in_count

  form do |f|
    f.inputs "Detalles del administrador" do
      f.input :name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
