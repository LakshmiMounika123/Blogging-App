ActiveAdmin.register Post do
  permit_params :title, :body, :published
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :published]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs 'Posts' do
      f.input :title
      f.input :body
      f.input :published
    end
    f.actions
  end
  
end
