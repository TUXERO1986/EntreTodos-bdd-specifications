Feature: HU12 Visualización cronológica de movimientos

Scenario: Visualización del historial ordenado por fecha
Given un participante accede al historial de un grupo con transacciones registradas
When la pantalla finaliza su carga
Then el sistema muestra los movimientos ordenados cronológicamente desde el más reciente hasta el más antiguo

Scenario: Visualización de historial sin movimientos registrados
Given un participante accede al historial de un grupo sin transacciones registradas
When el sistema verifica que no existen movimientos
Then muestra un mensaje informativo indicando que aún no hay movimientos registrados
