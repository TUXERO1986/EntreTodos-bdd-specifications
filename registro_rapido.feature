# language: es
Característica: HUNF-04 Registro de gastos en máximo tres pasos

  Escenario: Registro rápido de un gasto grupal
    Dado que un usuario necesita ingresar un nuevo gasto compartido
    Cuando completa el proceso de registro utilizando la interfaz de la aplicación
    Entonces el sistema permite finalizar la operación en un máximo de tres pasos

  Escenario: Registro de gasto desde la pantalla principal
    Dado que un usuario se encuentra en el panel principal de la aplicación
    Cuando selecciona la opción de agregar gasto e ingresa la información requerida
    Entonces el sistema registra el gasto sin exigir más de tres interacciones principales para completar la acción