class UsersController < ApplicationController
    def index
        render "Index"
    end

    def employee
        render "employee"
    end


    def Login
            redirect_to :controller => 'users', :action => 'login' 
     end
    
    def login
        
     if User.exists?(:email=>params[:exampleInputEmail1],:id=>params[:exampleInputPassword1])
        
       render 'employee'
       
      else 
        @mensaje = 'usuario y contraseña incorrecta'
        @tipo ='error'
        render 'Index'
       end

    end

    def homes 
        render 'homes' 
        
    end

    def Index
       
        render 'Index', layouts: 'Index'
     end


    # def register
    #     @perfiles = Profile.all
    #     render 'register'
    # end
    # def save_register
    #     mensaje = ""
    #     if !params.presence?(params[:txtLogin]) mensaje += "Ingrese Login \n,"
    #     if params[:txtLogin].eql?("") mensaje += "Ingrese Login,"
    #     if params[:ddlPerfil].eql?("") mensaje += "Seleccione Perfil,"
    #     if params[:txtPassword].eql?("") mensaje += "Ingrese Password,"
    #     if !params[:txtPassword].eql?(params[:txtConfirmarPassword]) mensaje += "Password no coincide"

    #     user_search = user.order_by("id").last
    #     id = user_search.id + 1

    #     user = User.new
    #     user.id = id
    #     user.Login = params[:txtLogin]
    #     user.Password = params[:txtPassword]
    #     user.pelfil_id = params[:ddlPerfil]
    #     if user.save?
            
    #     else
        
    #     end
    #end
    #end
end

