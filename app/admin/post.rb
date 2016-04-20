ActiveAdmin.register Post do
  permit_params :title, :subtitle, :body, :image
  menu label: "Blog"
  index do
    selectable_column
    column :title
    column :subtitle
    column :body
    column :created_at
    actions
  end

  action_item :view, only: :show do
    link_to 'Volver', admin_posts_path
  end

  show do
    attributes_table do
      row :title
      row :subtitle
      row :body
      row :video_url
      row :created_at
    end
  end

  filter :title
  filter :subtitle
  filter :created_at

  form do |f|
    f.inputs "Detalles del artículo" do
      f.input :title
      f.input :subtitle
      f.input :body
      f.input :image
    end
    f.actions
  end
end