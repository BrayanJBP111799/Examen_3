//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
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
        public double TotalPagar { get; set; }
        public string Nom_Tarjeta { get; set; }
        public string Num_Tarjeta { get; set; }
        public string Fecha_Ven { get; set; }
        public int Codigo { get; set; }
    }
}
