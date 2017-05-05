# pdep-mit-2017-base-de-TP-funcional
Repositorio de base para el TP grupal de funcional 2017

## Enunciado
Primera entrega: https://docs.google.com/document/d/1pzFtDVVHnmCmuQ4buY1L21ZlI3JUSA_DR9X5pFWTc_w/edit#heading=h.91k8u3xeggkw
Segunda entrega: https://docs.google.com/document/d/19jHU73Ou8E6WXQDDAqlXaYGT6g-MUR6oAinY1k6HL2U/edit?usp=sharing


## ¿Cómo organizar la solución?
En el archivo TP.hs declarar lo necesario para resolver lo pedido en el enunciado después de la declaración del módulo TP (esa línea permite que el archivo de tests pueda importar toda la lógica).

En el archivo Tests.hs completar los datos de prueba incluyendo la consulta para lograr lo pedido por el test correspondiente y el valor de retorno esperado. Por ejemplo, si queremos testear que 2 + 2 es 4 y tenemos:

("2 + 2 debería dar 4", undefined, ResultadoDeTipoDesconocido)

Sólo hace falta cambiar esa tupla por:

("2 + 2 debería dar 4", 2 + 2, 4)

Para los puntos que pidan escribir una consulta en la consola, no se espera que desarrollen una función en TP.hs que responda a esa consulta. Directamente se espera que prueben eso en la consola y luego la copien en la tupla que testea ese punto.

## Para probar la solución
Cargar en el intérprete de Haskell el archivo Tests.hs y correr en la consola:
> correrTodo

Eso les va a dar el detalle de las cosas que funcionan y las que no.
