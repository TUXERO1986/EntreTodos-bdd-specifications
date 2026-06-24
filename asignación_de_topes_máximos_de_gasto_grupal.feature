Feature: HU09 Asignación de topes máximos de gasto grupal

Scenario: Creación de un límite presupuestal
Given un creador de grupo planifica las finanzas de un evento colaborativo
When define un monto tope en la sección de configuración
Then el aplicativo guarda el límite y comienza a monitorear la sumatoria de gastos

Scenario: Emisión de alerta por proximidad al límite presupuestal
Given un grupo posee un presupuesto máximo configurado previamente
When un integrante registra un gasto que acerca el acumulado al límite establecido
Then el aplicativo envía una notificación de advertencia a todos los miembros del grupo