Feature: HU10 Registro de transacciones sin conexión a internet

  Scenario: Guardado local durante pérdida de conectividad
    Given un usuario utiliza la aplicación en una zona sin conexión a internet
    When finaliza el registro de un nuevo gasto
    Then el sistema almacena la información localmente hasta detectar conectividad

  Scenario: Sincronización de datos al recuperar la conexión
    Given la aplicación posee gastos almacenados localmente pendientes de sincronización
    When el dispositivo del usuario restablece su conexión a internet
    Then el sistema transmite automáticamente los registros a la base de datos principal