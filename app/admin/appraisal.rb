ActiveAdmin.register Appraisal do
permit_params :neighborhood, :min_price, :max_price
menu label: "Tasaciones"

index do
  selectable_column
  column :neighborhood
  column :min_price
  column :max_price
  column :created_at
  actions
end

action_item :view, only: :show do
  link_to 'Volver', admin_appraisals_path
end

action_item :view, only: :index do
  link_to "Descargar en Excel", appraisals_excel_path(format: "xls")
end

show title: proc{|appraisal| appraisal.neighborhood } do
  attributes_table do
    row :neighborhood
    row :min_price
    row :max_price
    row :created_at
  end
end

filter :neighborhood
filter :min_price
filter :max_price

form do |f|
  f.inputs "Detalles de la tasación" do
    f.input :neighborhood
    f.input :min_price
    f.input :max_price
  end
  f.actions
end

end
