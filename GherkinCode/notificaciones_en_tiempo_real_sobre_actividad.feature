Feature: HU19 Notificaciones en tiempo real sobre actividad

Scenario: Notificar registro de nuevo gasto
  Given un integrante registra un nuevo gasto en el grupo
  When el sistema actualiza los balances correspondientes
  Then envía una notificación a los demás integrantes involucrados

Scenario: Recibir alerta push en tiempo real
  Given el usuario tiene conexión a internet y notificaciones habilitadas
  When se genera una nueva actividad relevante
  Then recibe una alerta push en tiempo real

Scenario: Sincronizar notificaciones pendientes
  Given un usuario se encuentra desconectado al momento de generarse una actividad
  When recupera la conexión a internet
  Then el sistema sincroniza y muestra las notificaciones pendientes

Scenario: Consultar centro de notificaciones
  Given el usuario accede al centro de notificaciones
  When existen alertas sin revisar
  Then el sistema muestra el detalle de las actividades registradas

Scenario: Acceder al detalle desde una notificación
  Given una notificación corresponde a un nuevo gasto registrado
  When el usuario abre la alerta
  Then el sistema redirige al detalle del gasto correspondiente