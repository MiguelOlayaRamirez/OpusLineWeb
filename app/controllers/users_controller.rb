class UsersController < ApplicationController
    def index
<<<<<<< HEAD
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

=======
        render "index"
    end
    def login
        if User.exists?(:Login=>params[:txtUser],:Password=>params[:txtPassword])
            #@mensaje = 'Usuario o Password Correcto'
            #@tipo = 'success'
            render 'home', layout: 'home'
        else
            @mensaje = 'Usuario o Password incorrecto'
            @tipo = 'error'
            render 'index'
        end
    end
    def register
        @perfiles = Profile.all
        render 'register'
    end
    #Validación de campos
    def save_register

        @perfiles = Profile.all
        mensaje = ""
        if params[:txtLogin].strip.empty? 
            mensaje += "Ingrese Login,"
        end
        if params[:ddlPerfiles].empty? 
            mensaje += "Seleccione Perfil,"
        end
        if params[:txtPassword].strip.empty? 
            mensaje += "Ingrese Password,"
        end
        if !params[:txtPassword].strip.eql?(params[:txtConfirmarPassword].strip) 
            mensaje += "Password no coincide,"
        end
                
        #Si el  mensaje es diferente de vacío, contiene log de errores
        if !mensaje.eql?("")
            @mensaje = mensaje.slide 0..-2
            @tipo = 'error' 
              return
        end

        #Dos formas de recuperar el id máximo y de sumarle 1 a ese valor máximo
        #user_search = user.order_by("id").last
        #id = user_search.id + 1
        id = User.maximum('id') + 1
            
        #Instanciamos un nuevo objeto de User y lo nombramos user
        user = User.new
        user.id = id
        user.Login = params[:txtLogin]
        user.Password = params[:txtPassword]
        user.pelfil_id = params[:ddlPerfiles]

        if user.save
            @mensaje = 'Se realizó proceso con éxito'
            @tipo = 'success'
            #redirect_action: "register" Para redireccionar directamente una acción con el inconveniente que no se envían los @mensaje y @tipo ya que al cargar directamente el método,elimina todo.
            render 'register'
        else
            @mensaje = 'Hubo un error durante el procedimiento'
            @tipo = 'error'
            render 'register'
        end
    end
end
>>>>>>> 64dfd735d1e75c4d51607ec08f7a99d191ea76a5
