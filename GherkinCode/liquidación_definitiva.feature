Feature: HU18 Liquidación Definitiva

Scenario: Confirmar cierre definitivo del grupo
  Given el creador del grupo posee permisos de administración
  When selecciona la opción de cierre definitivo
  Then el sistema solicita confirmación antes de ejecutar la acción

Scenario: Cambiar estado del grupo a liquidación final
  Given el creador confirma el cierre definitivo
  When el sistema procesa la solicitud
  Then el grupo cambia al estado de liquidación final

Scenario: Bloquear registro de nuevos gastos
  Given el grupo se encuentra en estado de liquidación final
  When cualquier integrante intenta registrar un nuevo gasto
  Then el sistema bloquea la operación

Scenario: Impedir modificaciones en un grupo cerrado
  Given el grupo se encuentra cerrado definitivamente
  When un integrante intenta modificar o eliminar registros existentes
  Then el sistema rechaza la acción e informa que el grupo está clausurado

Scenario: Consultar balance final del grupo
  Given el proceso de liquidación final concluyó correctamente
  When los integrantes consultan el balance del grupo
  Then visualizan las deudas finales como montos fijos e inmodificables