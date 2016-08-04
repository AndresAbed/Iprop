ActiveAdmin.register Property do
  permit_params :title, :address, :bedrooms, :bathrooms, :size, :description, 
  :price, :highlight, :flat, :pic_1, :pic_2, :pic_3, :pic_4, :pic_5, :pic_6, :pic_7, 
  :pic_8, :pic_9, :pic_10, :pic_11, :pic_12, :pic_13, :pic_14, :pic_15, 
   :pic_16, :pic_17, :pic_18, :pic_19, :pic_20, :state, :video, 
  tag_ids: [], features_attributes: [:id, :feature, :property_id], tags_attributes: [:id, :name]
  menu label: "Propiedades"

  config.per_page = 50

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
    def create
      create! do |format|
        format.html { redirect_to admin_properties_path, notice: "Propiedad creada correctamente" } if resource.valid?
      end
    end
    def update
      update! do |format|
        format.html { redirect_to admin_properties_path, notice: "Propiedad actualizada" } if resource.valid?
      end
    end
    def destroy
      destroy! do |format|
        format.html { redirect_to admin_properties_path, notice: "Propiedad eliminada" }
      end
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
      row :pic_9_file_name
      row :pic_10_file_name
      row :pic_11_file_name
      row :pic_12_file_name
      row :pic_13_file_name
      row :pic_14_file_name
      row :pic_15_file_name
      row :pic_16_file_name
      row :pic_17_file_name
      row :pic_18_file_name
      row :pic_19_file_name
      row :pic_20_file_name
      row :state
      row :video
      row "Tipo de propiedad" do |property|
        (property.tags.map{ |p| p.name }).join(' - ').html_safe
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
  filter :tags, label: 'Tipo de propiedad', collection: proc {Tag.all.map{|u| ["#{u.name}", u.id]}}, as: :select
  filter :state, as: :select, collection: ['Venta', 'Alquiler', 'Alquiler temporal']

  form do |f|
    f.inputs "Detalles de la propiedad", :multipart => true do
      f.input :title
      f.input :address, input_html: {placeholder: "Dirección, Localidad, Provincia, País."}
      f.input :bedrooms
      f.input :bathrooms
      f.input :size
      f.input :description
      f.input :price
      f.input :video, label: 'Video Url', input_html: {placeholder: "Ejemplo: https://www.youtube.com/embed/0obJrUjm-jw"}
      f.input :highlight, as: :boolean
      if f.object.flat_file_name.present?
        f.input :flat, hint: image_tag(f.object.flat.url)
      else
        f.input :flat
      end
      if f.object.pic_1_file_name.present?
        f.input :pic_1, hint: image_tag(f.object.pic_1.url)
      else
        f.input :pic_1
      end
      if f.object.pic_2_file_name.present?
        f.input :pic_2, hint: image_tag(f.object.pic_2.url)
      else
        f.input :pic_2
      end 
      if f.object.pic_3_file_name.present?
        f.input :pic_3, hint: image_tag(f.object.pic_3.url)
      else
        f.input :pic_3
      end 
      if f.object.pic_4_file_name.present?
        f.input :pic_4, hint: image_tag(f.object.pic_4.url)
      else
        f.input :pic_4
      end 
      if f.object.pic_5_file_name.present?
        f.input :pic_5, hint: image_tag(f.object.pic_5.url)
      else
        f.input :pic_5
      end 
      if f.object.pic_6_file_name.present?
        f.input :pic_6, hint: image_tag(f.object.pic_6.url)
      else
        f.input :pic_6
      end
      if f.object.pic_7_file_name.present?
        f.input :pic_7, hint: image_tag(f.object.pic_7.url)
      else
        f.input :pic_7
      end 
      if f.object.pic_8_file_name.present?
        f.input :pic_8, hint: image_tag(f.object.pic_8.url)
      else
        f.input :pic_8
      end 
      if f.object.pic_9_file_name.present?
        f.input :pic_9, hint: image_tag(f.object.pic_9.url)
      else
        f.input :pic_9
      end 
      if f.object.pic_10_file_name.present?
        f.input :pic_10, hint: image_tag(f.object.pic_10.url)
      else
        f.input :pic_10
      end
      if f.object.pic_11_file_name.present?
        f.input :pic_11, hint: image_tag(f.object.pic_11.url)
      else
        f.input :pic_11
      end
      if f.object.pic_12_file_name.present?
        f.input :pic_12, hint: image_tag(f.object.pic_12.url)
      else
        f.input :pic_12
      end
      if f.object.pic_13_file_name.present?
        f.input :pic_13, hint: image_tag(f.object.pic_13.url)
      else
        f.input :pic_13
      end
      if f.object.pic_14_file_name.present?
        f.input :pic_14, hint: image_tag(f.object.pic_14.url)
      else
        f.input :pic_14
      end
      if f.object.pic_15_file_name.present?
        f.input :pic_15, hint: image_tag(f.object.pic_15.url)
      else
        f.input :pic_15
      end
      if f.object.pic_16_file_name.present?
        f.input :pic_16, hint: image_tag(f.object.pic_16.url)
      else
        f.input :pic_16
      end
      if f.object.pic_17_file_name.present?
        f.input :pic_17, hint: image_tag(f.object.pic_17.url)
      else
        f.input :pic_17
      end
      if f.object.pic_18_file_name.present?
        f.input :pic_18, hint: image_tag(f.object.pic_18.url)
      else
        f.input :pic_18
      end
      if f.object.pic_19_file_name.present?
        f.input :pic_19, hint: image_tag(f.object.pic_19.url)
      else
        f.input :pic_19
      end
      if f.object.pic_20_file_name.present?
        f.input :pic_20, hint: image_tag(f.object.pic_20.url)
      else
        f.input :pic_20
      end
      f.input :state, as: :select, collection: ['Venta', 'Alquiler', 'Alquiler temporal']
      f.input :tags, label: 'Tipo de propiedad', as: :check_boxes, multiple: true, collection: Tag.all.map{|u| ["#{u.name}", u.id]}
    end
    f.has_many :features, new_record: 'Nuevo item' do |f|
      f.input :feature
    end
    f.actions
  end
end
