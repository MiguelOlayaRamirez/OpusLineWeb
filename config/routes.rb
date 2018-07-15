Rails.application.routes.draw do
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "users" => "users#index" # Crea un alias y con la asignación indico controlador y acción
  post "users/login" #Indico directo el controlador y la acción
  #Todos los controladores deben tener una ruta aquí de acuerdo al methodo que usen. get, post, delete, etc
  
  #Una carga la vista y la otra envía los datos
  post "users/save_register"
  get "users/register"
end
#rails g scaffold Profile id:integer Descripcion:string