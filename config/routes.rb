Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})

  #post("/insert_actor", { :controller => "actors", :action => "create" })

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})
  #post("/insert_photo_record", { :controller => "photos", :action => "create" })
  post("/delete_photo/:path_id", { :controller => "photos", :action => "destory" })

end
