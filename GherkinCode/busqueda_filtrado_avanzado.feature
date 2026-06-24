Feature: HU14 Búsqueda con filtrado avanzado de operaciones

Scenario: Filtrado de transacciones por una categoría específica
Given que un usuario busca un consumo específico dentro del buscador del grupo
When selecciona el filtro por el rubro "Transporte" y aplica los cambios
Then el sistema oculta los demás registros y despliega únicamente los gastos asociados a dicha categoría

Scenario: Búsqueda cruzada combinando persona y rango de fechas
Given que un usuario necesita auditar cuentas complejas de una salida o viaje
When ingresa el nombre de un miembro específico y acota el calendario a los últimos tres días
Then el sistema filtra la lista mostrando solo las operaciones que cumplen con ambos criterios simultáneamente