ActiveAdmin.register Post do
  permit_params :title, :subtitle, :body, :image
  menu label: "Blog"
  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :body
    column :created_at
    actions
  end

  filter :title
  filter :subtitle
  filter :body
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :subtitle
      f.input :body
      f.input :image
    end
    f.actions
  end
end