#definimos la clase direccion, en la que se guarda la direccion ip y mac
class Ordenador::TarjetaRed::Direccion
  
  attr_accessor :mac, :ip
  
  def initialize (mac_adress, ip_adress)
    @mac_adress = mac_adress
    @ip_adress = ip_adress
  end
  
  def to_s
    "Dirección: \n\t\t\tMac: #{@mac_adress} \n\t\t\tIP: #{@ip_adress}"
  end
end
