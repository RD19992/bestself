Rails.application.routes.draw do
  # Routes for the Target resource:
  # CREATE
  get "/targets/new", :controller => "targets", :action => "new"
  post "/create_target", :controller => "targets", :action => "create"

  # READ
  get "/targets", :controller => "targets", :action => "index"
  get "/targets/:id", :controller => "targets", :action => "show"

  # UPDATE
  get "/targets/:id/edit", :controller => "targets", :action => "edit"
  post "/update_target/:id", :controller => "targets", :action => "update"

  # DELETE
  get "/delete_target/:id", :controller => "targets", :action => "destroy"
  #------------------------------

  # Routes for the Source resource:
  # CREATE
  get "/sources/new", :controller => "sources", :action => "new"
  post "/create_source", :controller => "sources", :action => "create"

  # READ
  get "/sources", :controller => "sources", :action => "index"
  get "/sources/:id", :controller => "sources", :action => "show"

  # UPDATE
  get "/sources/:id/edit", :controller => "sources", :action => "edit"
  post "/update_source/:id", :controller => "sources", :action => "update"

  # DELETE
  get "/delete_source/:id", :controller => "sources", :action => "destroy"
  #------------------------------

  # Routes for the Reply resource:
  # CREATE
  get "/replies/new", :controller => "replies", :action => "new"
  post "/create_reply", :controller => "replies", :action => "create"

  # READ
  get "/replies", :controller => "replies", :action => "index"
  get "/replies/:id", :controller => "replies", :action => "show"

  # UPDATE
  get "/replies/:id/edit", :controller => "replies", :action => "edit"
  post "/update_reply/:id", :controller => "replies", :action => "update"

  # DELETE
  get "/delete_reply/:id", :controller => "replies", :action => "destroy"
  #------------------------------

  # Routes for the Flag resource:
  # CREATE
  get "/flags/new", :controller => "flags", :action => "new"
  post "/create_flag", :controller => "flags", :action => "create"

  # READ
  get "/flags", :controller => "flags", :action => "index"
  get "/flags/:id", :controller => "flags", :action => "show"

  # UPDATE
  get "/flags/:id/edit", :controller => "flags", :action => "edit"
  post "/update_flag/:id", :controller => "flags", :action => "update"

  # DELETE
  get "/delete_flag/:id", :controller => "flags", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Type resource:
  # CREATE
  get "/types/new", :controller => "types", :action => "new"
  post "/create_type", :controller => "types", :action => "create"

  # READ
  get "/types", :controller => "types", :action => "index"
  get "/types/:id", :controller => "types", :action => "show"

  # UPDATE
  get "/types/:id/edit", :controller => "types", :action => "edit"
  post "/update_type/:id", :controller => "types", :action => "update"

  # DELETE
  get "/delete_type/:id", :controller => "types", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
