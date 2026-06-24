Feature: HU13 Recuperación de datos borrados

Scenario: Restauración exitosa de un gasto eliminado
Given un administrador accede a la papelera de reciclaje del grupo
When selecciona un gasto eliminado y solicita su restauración
Then el sistema restablece el gasto al historial activo y actualiza los saldos del grupo

Scenario: Consulta del registro de auditoría de modificaciones
Given un administrador revisa un gasto modificado dentro de la papelera de reciclaje
When consulta la información técnica del registro
Then el sistema muestra el usuario responsable de la modificación y la fecha de la acción