module TP where
import Text.Show.Functions

-- Para comparar a dos clientes por igualdad (principalmente necesario para los tests), comparar los historiales podría ser un problema para derivar Eq.
-- Si el data de la entrega 1 no se llamaba Cliente, o alguna de las funciones que se usan en esta definición tenía otro nombre,
-- vale cambiar esta definición para que se adapte a lo que hicieron.
instance Eq Cliente where
  (==) cliente otroCliente = (nombre cliente, resistencia cliente, amigos cliente, cantidadDeBebidasTomadas cliente) 
				== (nombre otroCliente, resistencia otroCliente, amigos otroCliente, cantidadDeBebidasTomadas otroCliente)