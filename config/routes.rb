Rails.application.routes.draw do
  # Routes for the Cuisine_tag resource:
  # CREATE
  get "/cuisine_tags/new", :controller => "cuisine_tags", :action => "new"
  post "/create_cuisine_tag", :controller => "cuisine_tags", :action => "create"

  # READ
  get "/cuisine_tags", :controller => "cuisine_tags", :action => "index"
  get "/cuisine_tags/:id", :controller => "cuisine_tags", :action => "show"

  # UPDATE
  get "/cuisine_tags/:id/edit", :controller => "cuisine_tags", :action => "edit"
  post "/update_cuisine_tag/:id", :controller => "cuisine_tags", :action => "update"

  # DELETE
  get "/delete_cuisine_tag/:id", :controller => "cuisine_tags", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
