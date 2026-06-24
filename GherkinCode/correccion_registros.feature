
Feature: HU11 Corrección de registros

Scenario: Edición exitosa de un monto erróneo
Given que un usuario guardó previamente un gasto con un monto equivocado en el grupo
When el usuario modifica el valor numérico en la pantalla de edición y guarda los cambios
Then el sistema actualiza el registro y recalcula los balances de todos los miembros de inmediato

Scenario: Intento de edición dejando campos obligatorios vacíos
Given que un usuario se encuentra modificando un registro de consumo existente
When borra la descripción del gasto y presiona el botón de guardar
Then la plataforma impide la actualización y muestra un mensaje indicando que el campo es obligatorio