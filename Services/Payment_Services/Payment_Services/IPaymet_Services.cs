using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Payment_Services
{
    [ServiceContract]
    public interface IPaymet_Services
    {
        [OperationContract]
        Pagos InsertPayment(int id_cliente, float total, string estado);

        [OperationContract]
        Pagos UpdateStatus(int id_cliente);

        [OperationContract]
        List<Pagos> SearchPaymets_byStatus(int id_cliente);

        [OperationContract]
        List<Pagos> SearchPaymets_All(int id_cliente);
    }
}
