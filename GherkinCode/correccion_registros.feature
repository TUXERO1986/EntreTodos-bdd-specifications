# language: es
Característica: HU11 Corrección de registros - EPICA 2

  Escenario: Edición exitosa de un monto erróneo
    Dado que un usuario guardó previamente un gasto con un monto equivocado en el grupo
    Cuando el usuario modifica el valor numérico en la pantalla de edición y guarda los cambios
    Entonces el sistema actualiza el registro y recalcula los balances de todos los miembros de inmediato

  Escenario: Intento de edición dejando campos obligatorios vacíos
    Dado que un usuario se encuentra modificando un registro de consumo existente
    Cuando borra la descripción del gasto y presiona el botón de guardar
    Entonces la plataforma impide la actualización y muestra un mensaje indicando que el campo es obligatorio