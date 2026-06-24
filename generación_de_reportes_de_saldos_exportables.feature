Feature: HU17 Generación de reportes de saldos exportables

Scenario: Exportar reporte financiero
  Given el participante visualiza el resumen de saldos de un grupo
  When selecciona la opción de exportar reporte
  Then el sistema genera un archivo PDF con la información financiera actual

Scenario: Descargar reporte generado
  Given el sistema genera correctamente el reporte
  When finaliza el proceso de exportación
  Then el archivo PDF queda disponible para descarga en el dispositivo

Scenario: Visualizar contenido del reporte
  Given el reporte fue generado exitosamente
  When el usuario accede al archivo
  Then visualiza el detalle de gastos, deudas, pagos y balances del grupo

Scenario: Compartir reporte exportado
  Given el archivo PDF se encuentra almacenado localmente
  When el usuario selecciona la opción compartir
  Then el sistema muestra los canales de compartición disponibles en el dispositivo

Scenario: Error al generar el reporte
  Given ocurre un error durante la generación del documento
  When el usuario solicita exportar el reporte
  Then el sistema muestra una notificación indicando que no fue posible generar el archivo