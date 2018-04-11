Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "cuisine_tags#index"
  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

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
