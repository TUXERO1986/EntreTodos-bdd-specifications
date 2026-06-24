# language: es
Característica: HUNF-01 Tiempo de respuesta en cálculos y balances

  Escenario: Cálculo inmediato de una nueva deuda
    Dado que un usuario registra un nuevo gasto compartido dentro del grupo
    Cuando el sistema procesa la división y actualización de balances
    Entonces la plataforma muestra los montos calculados en un tiempo menor a 2 segundos

  Escenario: Consulta rápida del balance grupal
    Dado que un usuario accede al panel de balances de un grupo con transacciones registradas
    Cuando el usuario solicita visualizar el estado actual de las cuentas
    Entonces el sistema presenta la información financiera en menos de 2 segundos