json.array!(@facturas) do |factura|
  json.extract! factura, :id, :codigoFactura, :nombreCliente, :valor
  json.url factura_url(factura, format: :json)
end
