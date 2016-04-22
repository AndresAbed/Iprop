ActiveAdmin.register Location do
  permit_params :address

  index do
    selectable_column
    id_column
    column :address
    actions
  end

  action_item :view, only: :show do
    link_to 'Volver', admin_locations_path
  end

  show do
    attributes_table do
      row :address
    end
  end

  form do |f|
    f.inputs "Detalles dirección" do
      f.input :address
    end
    f.actions
  end
end
