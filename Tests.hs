import Test.HUnit
import TP

data Desconocido = ResultadoDeTipoDesconocido deriving (Show, Eq)

--
-- correr todo usando:
-- > correrTodo
--

-- DATOS PARA ARMAR LAS PRUEBAS (modificar donde corresponda)
-- Cada una de estas funciones debe retornar una tupla de aridad 3
-- cuyos valores representan (descripcion, consulta que resuelve lo pedido, resultado esperado)
-- por cuestiones de tipado, cambien los ResultadoDeTipoDesconocido para una misma función de datos de test (por ejemplo datosTest3) todos juntos
-- pueden reemplazar los undefined por la consulta que resuelve el problema por separado sin problemas porque undefined :: a

datosTest3 1 = ("Cristian debe estar duro", undefined, ResultadoDeTipoDesconocido)
datosTest3 2 = ("Rodri debe estar fresco", undefined, ResultadoDeTipoDesconocido)
datosTest3 3 = ("Marcos debe estar duro", undefined, ResultadoDeTipoDesconocido)
datosTest3 4 = ("Si Marcos se hace amigo de Ana y Rodri, está piola", undefined, ResultadoDeTipoDesconocido)

datosTest4 1 = ("Rodri intenta hacerse amigo de sí mismo", undefined, ResultadoDeTipoDesconocido)
datosTest4 2 = ("Marcos intenta hacerse amigo de Rodri, de quien ya es amigo", undefined, ResultadoDeTipoDesconocido)
datosTest4 3 = ("Rodri intenta hacerse amigo de Marcos, que no era su amigo", undefined, ResultadoDeTipoDesconocido)

datosTest5 1 = ("Si Ana toma GrogXD queda con resistencia 0", undefined, ResultadoDeTipoDesconocido)
datosTest5 2 = ("Si Ana toma la Jarra Loca su resistencia y la de sus amigos baja", undefined, ResultadoDeTipoDesconocido)
datosTest5 3 = ("Si Ana toma un Klusener de huevo queda con resistencia 115", undefined, ResultadoDeTipoDesconocido)
datosTest5 4 = ("Si Ana toma un Klusener de chocolate queda con resistencia 111", undefined, ResultadoDeTipoDesconocido)
datosTest5 5 = ("Si Cristian toma un Tintico queda con resistencia 2", undefined, ResultadoDeTipoDesconocido)
datosTest5 6 = ("Si Ana toma un Tintico queda con resistencia 130", undefined, ResultadoDeTipoDesconocido)
datosTest5 7 = ("Si Rodri toma una Soda de fuerza 2 queda con nombre errpRodri", undefined, ResultadoDeTipoDesconocido)
datosTest5 8 = ("Si Ana toma una Soda de fuerza 10 queda con nombre errrrrrrrrrpAna", undefined, ResultadoDeTipoDesconocido)
datosTest5 9 = ("Si Ana toma una Soda de fuerza 10 queda con nombre epAna", undefined, ResultadoDeTipoDesconocido)

datosTest6 1 = ("Si Rodri se rescata 5 horas queda con 255 de resistencia", undefined, ResultadoDeTipoDesconocido)
datosTest6 2 = ("Si Rodri se rescata 1 hora queda con 155 de resistencia", undefined, ResultadoDeTipoDesconocido)

datosTest7 1 = ("Itinerario de Ana", undefined, ResultadoDeTipoDesconocido)

-- TESTS AUTOMATICOS (no modificar)

armarTest fDatosTest = (\(titulo, resultado, esperado) -> TestLabel titulo (resultado ~?= esperado)).fDatosTest

armarTestSuite titulo fDatosTest cant = (TestLabel titulo . TestList . map (armarTest fDatosTest)) [1.. cant]
tests = TestList [
    armarTestSuite "Punto 3" datosTest3 4,
    armarTestSuite "Punto 4" datosTest4 3,
    armarTestSuite "Punto 5" datosTest5 9,
    armarTestSuite "Punto 6" datosTest6 2,
    armarTestSuite "Punto 7" datosTest7 1
  ]
correrTodo = runTestTT tests