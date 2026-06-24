# language: es
Característica: HU14 Búsqueda con filtrado avanzado de operaciones - EPICA 3

  Escenario: Filtrado de transacciones por una categoría específica
    Dado que un usuario busca un consumo específico dentro del buscador del grupo
    Cuando selecciona el filtro por el rubro "Transporte" y aplica los cambios
    Entonces el sistema oculta los demás registros y despliega únicamente los gastos asociados a dicha categoría

  Escenario: Búsqueda cruzada combinando persona y rango de fechas
    Dado que un usuario necesita auditar cuentas complejas de una salida o viaje
    Cuando ingresa el nombre de un miembro específico y acota el calendario a los últimos tres días
    Entonces el sistema filtra la lista mostrando solo las operaciones que cumplen con ambos criterios simultáneamente