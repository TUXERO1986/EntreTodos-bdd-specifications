Feature: HU07 Registro de cancelación de deudas

Scenario: Liquidación total de un saldo pendiente
Given un integrante deudor ha transferido el dinero correspondiente a su acreedor
When marca su obligación como pagada en la interfaz
Then el sistema descuenta el monto del balance y refleja el estado de cuenta como saldado

Scenario: Registro de un abono parcial a una deuda
Given un integrante deudor posee una obligación económica pendiente
When ingresa un pago inferior al monto total adeudado
Then el sistema descuenta el abono y mantiene la deuda activa con el saldo restante