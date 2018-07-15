Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "users" => "users#index"   #crea un alias y con la asignacion indico controlador y accion

get "users/Login"   #indico directo el controlador y la accion
get "homes" => "users#homes"  
get "registro" => "users#registro" 
get "users/homes" 
get "users/Index"
get "users/employee"
post "employee" => "users#employee"
get "users/login"

end

