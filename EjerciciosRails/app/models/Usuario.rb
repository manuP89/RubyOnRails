class Usuario
  
  attr_accessor :user, :pass
  
  def initialize(usuario, contraseña)
    @user = usuario
    @pass = contraseña
  end
  
  def to_s
        
    "[#{@user} --> #{@pass}]"
        
  end
  
end