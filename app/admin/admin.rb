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

  filter :name
  filter :last_name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
