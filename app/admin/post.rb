ActiveAdmin.register Post do
  permit_params :title, :subtitle, :body, :image, :shown
  menu label: "Novedades"

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
    def create
      create! do |format|
        format.html { redirect_to admin_posts_path, notice: "Artículo creado correctamente" } if resource.valid?
      end
    end
    def update
      update! do |format|
        format.html { redirect_to admin_posts_path, notice: "Artículo actualizado" } if resource.valid?
      end
    end
    def destroy
      destroy! do |format|
        format.html { redirect_to admin_posts_path, notice: "Artículo eliminado" }
      end
    end
  end

  index do
    selectable_column
    column :title
    column :subtitle
    column :shown
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
      row :shown
      row :created_at
      row :image_file_name
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
      f.input :shown
    end
    f.actions
  end
end