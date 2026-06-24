# language: es
Característica: HU13 Recuperación de datos borrados - EPICA 2 y 3

  Escenario: Restauración exitosa de un gasto eliminado
    Dado que un administrador ingresa a la sección de la papelera de reciclaje del grupo
    Cuando selecciona un registro previamente borrado y presiona el botón de restaurar
    Entonces el sistema devuelve el consumo al historial activo y actualiza automáticamente los saldos generales del grupo

  Escenario: Consulta del registro de auditoría de modificaciones
    Dado que un administrador revisa los detalles de un gasto modificado dentro de la papelera
    Cuando despliega la información técnica del elemento
    Entonces el sistema muestra la identidad del usuario que realizó el cambio y la fecha exacta de la acción