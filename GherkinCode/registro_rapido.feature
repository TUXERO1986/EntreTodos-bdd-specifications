#lenguaje: es
Feature: Registro rápido de consumos

Como integrante de un grupo de gastos compartidos
Quiero registrar consumos de manera rápida
Para evitar retrasos durante una salida, viaje o actividad grupal

Scenario: Registro ágil de un gasto compartido
Given que el usuario pertenece a un grupo activo
When accede al formulario de registro de gasto y completa los campos obligatorios
Then el sistema debe permitir finalizar el registro en un máximo de 30 segundos

Scenario: Disponibilidad inmediata del formulario
Given que el usuario se encuentra dentro de un grupo
When selecciona la opción "Registrar gasto"
Then el formulario de registro debe mostrarse en menos de 2 segundos

Scenario: Minimización de datos requeridos
Given que el usuario desea registrar un gasto compartido
When inicia el proceso de registro
Then el sistema debe solicitar únicamente los datos indispensables para almacenar el consumo

Scenario: Confirmación inmediata del registro
Given que el usuario ingresó correctamente la información del gasto
When presiona el botón "Guardar"
Then el sistema debe confirmar visualmente el registro exitoso sin requerir acciones adicionales

Scenario: Registro desde dispositivo móvil
Given que el usuario utiliza la aplicación desde un dispositivo móvil
When registra un nuevo gasto
Then la interfaz debe permitir completar el proceso sin desplazamientos o pasos innecesarios
