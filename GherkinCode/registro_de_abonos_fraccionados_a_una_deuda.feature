Feature: HU20 Registro de abonos fraccionados a una deuda

Scenario: Registrar un abono parcial
  Given el usuario posee una deuda activa
  When registra un abono menor al saldo pendiente
  Then el sistema descuenta el monto ingresado y mantiene la deuda activa con el saldo restante

Scenario: Actualizar balance tras un abono parcial
  Given existe una deuda con saldo pendiente
  When el usuario registra un abono parcial válido
  Then el sistema actualiza automáticamente el balance entre acreedor y deudor

Scenario: Rechazar un abono superior al saldo pendiente
  Given el usuario intenta registrar un abono mayor al saldo adeudado
  When confirma la operación
  Then el sistema rechaza el registro e informa que el monto excede la deuda pendiente

Scenario: Marcar deuda como saldada
  Given el usuario registra un abono exactamente igual al saldo restante
  When el sistema procesa el pago
  Then marca la deuda como completamente saldada

Scenario: Ocultar deudas saldadas
  Given una deuda ha sido saldada en su totalidad
  When el usuario consulta sus obligaciones pendientes
  Then el sistema ya no muestra dicha deuda como activa

Scenario: Registrar abonos en el historial
  Given se registra un abono parcial o total
  When la operación finaliza correctamente
  Then el sistema almacena el movimiento en el historial de pagos del grupo