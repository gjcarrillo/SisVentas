﻿--Mostrar los detalles de una venta:
create proc spMostrarDetalleVenta
@txtBuscar int
as
select d.iddetalle_ingreso, a.nombre as Artículo,
d.cantidad,d.precio_venta,d.descuento,((d.precio_venta * d.cantidad) - d.descuento) as SubTotal
from detalle_venta d
inner join detalle_ingreso di on d.iddetalle_ingreso = di.iddetalle_ingreso
inner join articulo a on di.idarticulo = a.idarticulo
where d.idventa = @txtBuscar
go
