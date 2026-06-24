
Feature: HU12 Visualización cronológica de movimientos

Scenario: Visualización del historial ordenado por fecha
Given que un participante accede al módulo de historial de un grupo con transacciones activas
When la pantalla termina de cargar
Then el sistema despliega todos los consumos organizados cronológicamente desde el más reciente hasta el más antiguo

Scenario: Acceso al historial en un grupo sin transacciones
Given que un participante abre la pestaña de movimientos en un grupo recién creado
When el sistema verifica que no existen registros de cobros ni pagos
Then el sistema muestra una interfaz limpia con un mensaje informativo indicando que aún no hay movimientos