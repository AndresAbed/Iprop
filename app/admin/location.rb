ActiveAdmin.register Location do
  permit_params :address

  index do
    selectable_column
    id_column
    column :address
    column :latitude
    column :longitude
    actions
  end

  action_item :view, only: :show do
    link_to 'Volver', admin_locations_path
  end

  show do
    attributes_table do
      row :address
      row :latitude
      row :longitude
    end
  end

  form do |f|
    f.inputs "Detalles dirección" do
      f.input :address
    end
    f.actions
  end
end
