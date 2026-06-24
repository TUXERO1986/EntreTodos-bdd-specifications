Feature: HU11 Corrección de registros

Scenario: Edición exitosa de un monto erróneo
Given un usuario ha registrado previamente un gasto con un monto incorrecto en el grupo
When modifica el valor numérico del gasto y guarda los cambios
Then el sistema actualiza el registro y recalcula los balances de todos los miembros

Scenario: Intento de edición con campos obligatorios vacíos
Given un usuario se encuentra modificando un registro de gasto existente
When elimina la descripción del gasto y selecciona la opción de guardar
Then el sistema impide la actualización y muestra un mensaje indicando que el campo es obligatorio