# language: es
Característica: HU12 Visualización cronológica de movimientos - EPICA 3

  Escenario: Visualización del historial ordenado por fecha
    Dado que un participante accede al módulo de historial de un grupo con transacciones activas
    Cuando la pantalla termina de cargar
    Entonces el sistema despliega todos los consumos organizados cronológicamente desde el más reciente hasta el más antiguo

  Escenario: Acceso al historial en un grupo sin transacciones
    Dado que un participante abre la pestaña de movimientos en un grupo recién creado
    Cuando el sistema verifica que no existen registros de cobros ni pagos
    Entonces el sistema muestra una interfaz limpia con un mensaje informativo indicando que aún no hay movimientos