ActiveAdmin.register Property do
  permit_params :title, :address, :bedrooms, :bathrooms, :size, :description, :price, features_attributes: [:id, :feature, :property_id]
  menu label: "Propiedades"

  index do
    selectable_column
    column :title
    column :address
    column :bedrooms
    column :bathrooms
    column :size
    column :description
    column :price
    actions
  end

  action_item :view, only: :show do
    link_to 'Volver', admin_properties_path
  end

  show title: proc{|property| property.title } do
    attributes_table do
      row :title
      row :address
      row :bedrooms
      row :bathrooms
      row :size
      row :description
      row :price
      row :created_at
    end
    panel "Características" do
      table_for property.features do
        column :feature
      end
    end
  end

  filter :title
  filter :address
  filter :bedrooms
  filter :bathrooms
  filter :size
  filter :description
  filter :price

  form do |f|
    f.inputs "Detalles de la propiedad" do
      f.input :title
      f.input :address
      f.input :bedrooms
      f.input :bathrooms
      f.input :size
      f.input :description
      f.input :price
    end
      f.has_many :features, new_record: 'Nuevo item' do |f|
        f.input :feature
      end
    f.actions
  end
end
