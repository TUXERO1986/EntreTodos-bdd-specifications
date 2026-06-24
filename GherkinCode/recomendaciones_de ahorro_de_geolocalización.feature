Feature: HU16 Recomendaciones de ahorro de geolocalización

Scenario: Mostrar establecimientos económicos cercanos
  Given el usuario ha concedido permisos de ubicación a la aplicación
  When accede al módulo de recomendaciones de ahorro
  Then el sistema obtiene su ubicación actual y muestra establecimientos económicos cercanos

Scenario: Mostrar recomendaciones dentro del radio de búsqueda
  Given existen establecimientos registrados dentro del radio de búsqueda
  When el sistema procesa la consulta geolocalizada
  Then muestra una lista de recomendaciones con nombre, categoría y distancia aproximada

Scenario: No existen establecimientos en la zona consultada
  Given el usuario se encuentra en una zona sin establecimientos registrados
  When solicita recomendaciones de ahorro
  Then el sistema informa que no existen alternativas disponibles en el área consultada

Scenario: Solicitar permisos de ubicación
  Given el usuario no ha otorgado permisos de ubicación
  When intenta acceder a las recomendaciones geolocalizadas
  Then el sistema solicita autorización para acceder a su ubicación

Scenario: Error al obtener la ubicación
  Given ocurre un error al obtener la ubicación del usuario
  When el sistema intenta generar recomendaciones
  Then muestra un mensaje indicando que no fue posible acceder a la ubicación actual