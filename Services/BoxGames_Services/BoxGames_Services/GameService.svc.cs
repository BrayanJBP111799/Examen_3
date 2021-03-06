﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace BoxGames_Services
{
    public class GameService : IGameService
    {
        //SELECCIONAR TODOS LOS JUEGOS
        public List<JuegosMesa> SelectGames()
        {
            List<JuegosMesa> list = new List<JuegosMesa     >();
            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                var v = dc.JuegosMesa.ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        list.Add(item);
                    }

                }
                else
                {
                    throw new Exception("Error al intentar traer los registros");
                }

            }
            return list;
        }

        //SELECCIONAR UN JUEGO
        public List<JuegosMesa> SearchGame(int id_juego)
        {
            List<JuegosMesa> list = new List<JuegosMesa>();

            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                var v = dc.JuegosMesa.Where(a => a.ID_JuegoMesa == id_juego).ToList();
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

        //INSERTAR JUEGO AL CARRO DE COMPRA
        public CarritoCompra InsertGame(int id_cliente, string id_juego, int precio)
        {
            CarritoCompra tabla_carrito = new CarritoCompra();

            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                tabla_carrito.ID_Cliente = id_cliente;
                tabla_carrito.ID_JuegoMesa = id_juego;
                tabla_carrito.Precio = precio;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.CarritoCompra.Add(tabla_carrito);
                dc.SaveChanges();
            }

            return null;
        }

        //ELIMINAR JUEGOS DEL CARRO DE COMPRA UNA VEZ REALIZADO EL PAGO
        public int DeleteGames(int id_cliente, string estado)
        {
            int res = 0;

            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                var v = dc.CarritoCompra.Where(a => a.ID_Cliente == id_cliente).ToList();
                if (v != null && estado == "Completado") //REVISAR
                {
                    foreach (var item in v)
                    {                       
                        dc.CarritoCompra.Remove(item);
                        dc.SaveChanges();
                        
                    }

                    res = 1;
                }
                else
                {
                    throw new Exception("Error en borrar");
                }
            }

            return res;
        }

        //ELIMINAR JUEGOS DEL CARRO DE COMPRA ANTES DEL PAGO
        public int DeleteGames_fromCarrito(int id_carrito)
        {
            int res = 0;

            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                var v = dc.CarritoCompra.Where(a => a.ID_CarritoCompra == id_carrito).ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        dc.CarritoCompra.Remove(item);
                        dc.SaveChanges();
                    }

                    res = 1;
                }
                else
                {
                    throw new Exception("Error en borrar");
                }
            }

            return res;
        }

        //ELIMINAR JUEGOS DEL CARRO DE COMPRA LUEGO DE HACER EL PAGO
        public int DeleteGames_byCustomer(int id_cliente)
        {
            int res = 0;

            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                var v = dc.CarritoCompra.Where(a => a.ID_Cliente == id_cliente).ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        dc.CarritoCompra.Remove(item);
                        dc.SaveChanges();

                    }

                    res = 1;
                }
                else
                {
                    throw new Exception("Error en borrar");
                }
            }

            return res;
        }

        //SELECCIONAR LOS ELEMENTOS DEL CARRITO
        public List<CarritoCompra> SearchCarrito(int id_cliente)
        {
            List<CarritoCompra> list = new List<CarritoCompra>();

            using (BoxGamesEntities dc = new BoxGamesEntities())
            {
                var v = dc.CarritoCompra.Where(a => a.ID_Cliente == id_cliente).ToList();
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
