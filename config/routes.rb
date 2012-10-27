Bikeshop::Application.routes.draw do
  get "/bikes", :controller=>"Bikes", :action=>"index", :as=>"bikes"
  post "/bikes", :controller=>"Bikes", :action=>"create"

  get "/bikes/new", :controller=>"Bikes", :action=>"new", :as=>"new_bike"

  get "/bikes/:id/edit", :controller=>"Bikes", :action=>"edit", :as=>"edit_bike"

  get "/bikes/:id", :controller=>"Bikes", :action => "show", :as=>"bike" 
  delete "/bikes/:id", :controller=>"Bikes", :action => "destroy"
  put "/bikes/:id", :controller=>"Bikes", :action=>"update"
end
