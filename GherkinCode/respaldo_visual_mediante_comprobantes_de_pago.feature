Feature: HU08 Respaldo visual mediante comprobantes de pago

Scenario: Carga de un recibo fotográfico
Given un participante requiere documentar la veracidad de una transacción
When sube una imagen del comprobante desde el almacenamiento de su dispositivo
Then la plataforma adjunta el archivo al detalle del gasto para la visualización grupal

Scenario: Eliminación de un comprobante adjunto
Given un participante ha subido una imagen errónea a un registro de gasto
When presiona el icono de eliminación sobre el comprobante
Then la plataforma elimina el archivo y desvincula la imagen del detalle del gasto