# language: es
Característica: HUNF-03 Compatibilidad con dispositivos Android

  Escenario: Instalación de la aplicación en Android
    Dado que un usuario posee un dispositivo con sistema operativo Android compatible
    Cuando descarga e instala la aplicación en su dispositivo móvil
    Entonces la aplicación se ejecuta correctamente sin presentar errores de compatibilidad

  Escenario: Uso de funcionalidades en Android
    Dado que un usuario accede a la aplicación desde un dispositivo Android
    Cuando registra gastos, consulta balances y recibe notificaciones
    Entonces todas las funcionalidades operan correctamente manteniendo el comportamiento esperado
