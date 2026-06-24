# language: es
Feature: Tiempo de respuesta del sistema

Como usuario de EntreTodos
Quiero obtener respuestas rápidas del sistema
Para gestionar gastos y deudas sin interrupciones

Scenario: Registro de un nuevo gasto
Given que el usuario completa correctamente el formulario de gasto
When selecciona la opción "Guardar"
Then el sistema debe registrar la información y mostrar la confirmación en un tiempo menor o igual a 2 segundos

Scenario: Recalculo automático de balances
Given que se registra un nuevo gasto o pago
When el sistema procesa la transacción
Then los balances de los integrantes deben actualizarse en un tiempo menor o igual a 2 segundos

Scenario: Consulta de historial de movimientos
Given que un usuario accede al historial de transacciones del grupo
When solicita visualizar los movimientos registrados
Then el sistema debe mostrar la información en un tiempo menor o igual a 3 segundos

Scenario: Generación de reporte financiero PDF
Given que un participante solicita exportar el resumen financiero del grupo
When selecciona la opción de generar reporte
Then el documento PDF debe estar disponible para descarga en un tiempo menor o igual a 5 segundos

Scenario: Consulta del dashboard de saldos
Given que el usuario accede al dashboard principal del grupo
When la aplicación carga la información financiera
Then los saldos consolidados deben mostrarse en un tiempo menor o igual a 3 segundos
