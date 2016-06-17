ActiveAdmin.register Property do
  permit_params :title, :address, :bedrooms, :bathrooms, :size, :description, 
  :price, :highlight, :flat, :pic_1, :pic_2, :pic_3, :pic_4, :pic_5, :pic_6, :pic_7, :pic_8, :state, :tag_ids => [],
  features_attributes: [:id, :feature, :property_id], tags_attributes: [:id, :tag_name]
  menu label: "Propiedades"

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    selectable_column
    column :title
    column :address
    column :bedrooms
    column :bathrooms
    column :size
    column :state
    column :price
    column :highlight
    actions
  end

  action_item :view, only: :show do
    link_to 'Ver en PDF', property_path(property, :format => :pdf), target: "_blank"
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
      row :highlight
      row :flat_file_name
      row :pic_1_file_name
      row :pic_2_file_name
      row :pic_3_file_name
      row :pic_4_file_name
      row :pic_5_file_name
      row :pic_6_file_name
      row :pic_7_file_name
      row :pic_8_file_name
      row :state
      row "Tipo de propiedad" do |property|
        (property.tags.map{ |p| p.tag_name }).join(' - ').html_safe
      end
      row "Características" do |property|
        (property.features.map { |p| p.feature }).join(' - ').html_safe
      end
    end
  end

  filter :title
  filter :address
  filter :bedrooms
  filter :bathrooms
  filter :size
  filter :price
  filter :highlight
  filter :tags, label: 'Tipo de propiedad', collection: proc {Tag.all.map{|u| ["#{u.tag_name}", u.id]}}, as: :select
  filter :state, as: :select, collection: ['Venta', 'Alquiler', 'Alquiler temporal']

  form do |f|
    f.inputs "Detalles de la propiedad" do
      f.input :title
      f.input :address, input_html: {placeholder: "Dirección, Localidad, Provincia, País."}
      f.input :bedrooms
      f.input :bathrooms
      f.input :size
      f.input :description
      f.input :price
      f.input :highlight, as: :boolean
      f.input :flat
      f.input :pic_1
      f.input :pic_2
      f.input :pic_3
      f.input :pic_4
      f.input :pic_5
      f.input :pic_6
      f.input :pic_7
      f.input :pic_8
      f.input :state, as: :select, collection: ['Venta', 'Alquiler', 'Alquiler temporal']
      f.input :tags, label: 'Tipo de propiedad', as: :check_boxes, multiple: true, collection: Tag.all.map{|u| ["#{u.tag_name}", u.id]}
    end
    f.has_many :features, new_record: 'Nuevo item' do |f|
      f.input :feature
    end
    f.actions
  end
end
