SET SERVEROUTPUT ON;

DECLARE

   TYPE r_detalle_pago IS RECORD (
       nombre        cliente.nombre%TYPE,
       monto_bruto   transaccion_pago.monto_bruto%TYPE,
       estado        transaccion_pago.ESTADO%TYPE,
       monto_final   transaccion_pago.monto_final%TYPE
   );

   v_pago r_detalle_pago;

BEGIN

   SELECT c.nombre,
          tp.monto_bruto, 
          tp.ESTADO,
          tp.monto_final 
   INTO v_pago
   from transaccion_pago tp
   inner join RESERVA_TEMPORAL rt on tp.reserva_id = rt.reserva_id
   inner join cliente c on rt.cliente_id = c.cliente_id
   WHERE c.cliente_id = 1;

   DBMS_OUTPUT.PUT_LINE('--- DETALLE DE PAGO ---');
   DBMS_OUTPUT.PUT_LINE('Cliente:     ' || v_pago.nombre);
   DBMS_OUTPUT.PUT_LINE('Monto Bruto: ' || v_pago.monto_bruto);
   DBMS_OUTPUT.PUT_LINE('Estado:      ' || v_pago.estado);
   DBMS_OUTPUT.PUT_LINE('Monto Final: ' || v_pago.monto_final);

EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No se encontró información para el cliente con ID 1.');
   WHEN TOO_MANY_ROWS THEN
      DBMS_OUTPUT.PUT_LINE('Atención: La consulta devolvió más de un registro. Un RECORD simple solo almacena una fila.');
END;
/