//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Payment_Services
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pagos
    {
        public int ID_Pago { get; set; }
        public int ID_Cliente { get; set; }
        public string EstadoPago { get; set; }
        public double TotalPagar { get; set; }
    }
}
