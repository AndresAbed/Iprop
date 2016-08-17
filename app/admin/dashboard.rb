ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: 'Home preview'

  content title: 'Home preview' do
    columns do
      column do
        panel "Propiedades destacadas" do
          table_for Property.where('highlight = true').limit(20).each do |property|
            column("Título", :title) {|property| link_to(property.title, admin_property_path(property)) }
            column  "Dirección", :address
            column "Tipo de operación", :operation
          end
        end
      end
      column do
        panel "Videos" do
          table_for Video.where('url != ?', "").each do |video|
            column :url
            column "Descripción", :description
          end
        end
        panel "Novedades activas" do
          table_for Post.where('shown = true').limit(10).each do |post|
            column("Título", :title) {|post| link_to(post.title, admin_post_path(post)) }
            column  "Subtítulo", :subtitle
            column "Fecha de creación", :created_at
          end
        end
      end
    end
  end
end
