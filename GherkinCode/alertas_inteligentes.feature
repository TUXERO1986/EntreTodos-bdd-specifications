# language: es
Característica: HU15 Alertas inteligentes por consumos atípicos - EPICA 3

  Escenario: Activación de alerta por un gasto inusualmente alto
    Dado que un integrante registra un nuevo consumo grupal en la aplicación
    Cuando el motor de inteligencia artificial detecta que el monto excede significativamente la media histórica del grupo
    Entonces el sistema genera una alerta visual advirtiendo sobre el comportamiento de consumo atípico

  Escenario: Comportamiento regular dentro del rango promedio
    Dado que los integrantes del grupo registran de manera habitual consumos estándar
    Cuando el sistema procesa las operaciones cargadas durante la salida
    Entonces el sistema almacena la información de forma ordinaria sin emitir advertencias de exceso