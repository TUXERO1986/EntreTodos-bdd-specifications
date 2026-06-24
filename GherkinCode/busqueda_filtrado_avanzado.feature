Feature: HU14 Búsqueda con filtrado avanzado de operaciones

  Scenario: Filtrado de transacciones por categoría
    Given un usuario busca una transacción dentro del grupo
    When selecciona la categoría "Transporte" y aplica el filtro
    Then el sistema muestra únicamente los gastos asociados a dicha categoría

  Scenario: Búsqueda por miembro y rango de fechas
    Given un usuario necesita revisar operaciones específicas del grupo
    When ingresa el nombre de un miembro y selecciona un rango de fechas
    Then el sistema muestra únicamente las operaciones que cumplen ambos criterios