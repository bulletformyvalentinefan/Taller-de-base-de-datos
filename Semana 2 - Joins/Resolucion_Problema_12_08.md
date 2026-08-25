nombre del cliente
monto bruto 
descuento aplicado 
monto final pagado 
estado del pago 


select nombre from cliente
join on RESERVA_TEMPORAL;
select monto_bruto, estado, monto_final from transaccion_pago;

select * from RESERVA_TEMPORAL
inner join cliente;



select c.nombre,
        tp.monto_bruto, 
        tp.ESTADO,
        tp.monto_final 
from transaccion_pago tp
inner join RESERVA_TEMPORAL rt on tp.reserva_id = rt.reserva_id
inner join cliente c on rt.cliente_id = c.cliente_id;
