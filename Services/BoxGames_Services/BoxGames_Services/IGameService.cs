using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace BoxGames_Services
{

    [ServiceContract]
    public interface IGameService
    {
        [OperationContract]
        List<JuegosMesa> SelectGames();

        [OperationContract]        
        List<JuegosMesa> SearchGame(int id_juego);

        [OperationContract]        
        CarritoCompra InsertGame(int id_cliente, string id_juego, int precio);

        [OperationContract]
        int DeleteGames(int id_cliente, string estado);

        [OperationContract]
        int DeleteGames_fromCarrito(int id_carrito);

        [OperationContract]
        int DeleteGames_byCustomer(int id_cliente);

        [OperationContract]
        List<CarritoCompra> SearchCarrito(int id_cliente);
    }
}
