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
        public Pagos InsertPayment(int id_cliente, float total, string nombre, string numero, string fecha, int codigo)
        {
            Pagos tabla_pagos = new Pagos();  

            using (PaymentsEntities dc = new PaymentsEntities())
            {
                tabla_pagos.ID_Cliente = id_cliente;
                tabla_pagos.TotalPagar = total;
                tabla_pagos.Nom_Tarjeta = nombre;
                tabla_pagos.Num_Tarjeta = numero;
                tabla_pagos.Fecha_Ven = fecha;
                tabla_pagos.Codigo = codigo;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.Pagos.Add(tabla_pagos);
                dc.SaveChanges();
            }

            return null;
        }

        
    }
}
