ActiveAdmin.register Video do
permit_params :url, :description
menu label: "Videos"
actions :all, :except => [:new, :destroy, :show]

controller do
  def update
    update! do |format|
      format.html { redirect_to admin_videos_path, notice: "Video actualizados" } if resource.valid?
    end
  end
end

index do
  selectable_column
  column :url
  column :description
  actions
end

form do |f|
  f.inputs "Videos" do
    f.input :url
    f.input :description
  end
  f.actions
end

end
