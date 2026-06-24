Feature: HU15 Alertas inteligentes por consumos atípicos

  Scenario: Detección de un gasto inusualmente alto
    Given un integrante registra un nuevo gasto grupal
    When el sistema detecta que el monto supera significativamente el promedio histórico del grupo
    Then genera una alerta visual indicando un consumo atípico

  Scenario: Registro de un gasto dentro del comportamiento habitual
    Given los integrantes registran gastos dentro de los rangos normales del grupo
    When el sistema procesa la operación
    Then almacena el gasto sin generar alertas de consumo atípico