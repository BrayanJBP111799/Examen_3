using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Payment_Services
{
    public class Paymet_Services : IPaymet_Services
    {
        //INSERTAR PAGOS DE UN CLIENTE
        public Pagos InsertPayment(int id_cliente, float total, string estado)
        {
            Pagos tabla_pagos = new Pagos();  

            using (PaymentsEntities dc = new PaymentsEntities())
            {
                tabla_pagos.ID_Cliente = id_cliente;
                tabla_pagos.TotalPagar = total;
                tabla_pagos.EstadoPago = estado;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.Pagos.Add(tabla_pagos);
                dc.SaveChanges();
            }

            return null;
        }

        //ACTUALIZAR EL ESTADO DE UN PAGO RELACIONADO A UN CLIENTE 
        public Pagos UpdateStatus(int id_cliente)
        {
            using (PaymentsEntities dc = new PaymentsEntities())
            {
                var v = dc.Pagos.Where(a => a.ID_Cliente == id_cliente).FirstOrDefault();

                if (v != null)
                {
                    v.EstadoPago = "Completado"; //REVISAR: ACTUALIZA SOLAMENTE ALGUNO SI HAY MAS DE UN REGISTRO PENDIENTE
                    dc.Configuration.ValidateOnSaveEnabled = false;
                    dc.SaveChanges();
                }
                else
                {
                    throw new Exception("Error al actualizar");
                }
            }

            return null;
        }

        //SELECCIONAR LOS PAGOS PENDIENTES DE UN CLIENTE
        public List<Pagos> SearchPaymets_byStatus(int id_cliente)
        {
            List<Pagos> list = new List<Pagos>();

            using (PaymentsEntities dc = new PaymentsEntities())
            {
                var v = dc.Pagos.Where(a => a.ID_Cliente == id_cliente && a.EstadoPago == "Pendiente").ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        list.Add(item);
                    }
                }
                else
                {
                    throw new Exception("Error en intentar filtrar el registro");
                }

            }
            return list;
        }

        //SELECCIONAR TODOS LOS PAGOS DE UN CLIENTE
        public List<Pagos> SearchPaymets_All(int id_cliente)
        {
            List<Pagos> list = new List<Pagos>();

            using (PaymentsEntities dc = new PaymentsEntities())
            {
                var v = dc.Pagos.Where(a => a.ID_Cliente == id_cliente).ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        list.Add(item);
                    }
                }
                else
                {
                    throw new Exception("Error en intentar filtrar el registro");
                }

            }
            return list;
        }
    }
}
