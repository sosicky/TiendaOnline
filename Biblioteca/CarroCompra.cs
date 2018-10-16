using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class CarroCompra : Boleta
    {
        #region campos
        private string _car_compra_id;
        private double _car_compra_total;
        private int _car_compra_cant_articul;
        private DateTime _car_compra_fecha;
        private Producto _producto;
        #endregion

        #region propiedades
        public string Car_compra_id
        {
            get
            {
                return _car_compra_id;
            }

            set
            {
                _car_compra_id = value;
            }
        }

        public double Car_compra_total
        {
            get
            {
                return _car_compra_total;
            }

            set
            {
                _car_compra_total = value;
            }
        }

        public int Car_compra_cant_articul
        {
            get
            {
                return _car_compra_cant_articul;
            }

            set
            {
                _car_compra_cant_articul = value;
            }
        }

        public DateTime Car_compra_fecha
        {
            get
            {
                return _car_compra_fecha;
            }

            set
            {
                _car_compra_fecha = value;
            }
        }

        public Producto producto
        {
            get
            {
                return _producto;
            }

            set
            {
                _producto = value;
            }
        }
        #endregion

        #region constructores
        public CarroCompra()
        {
            this.Init();
        }
        public CarroCompra(string car_compra_id, double car_compra_total, int car_compra_cant_articul, DateTime car_compra_fecha)
        {
            Car_compra_id = car_compra_id;
            Car_compra_total = car_compra_total;
            Car_compra_cant_articul = car_compra_cant_articul;
            Car_compra_fecha = car_compra_fecha;
        }
        #endregion

        #region metodos
        public void Init()
        {
            _car_compra_id = string.Empty;
            _car_compra_total = 0;
            _car_compra_cant_articul = 0;
            _car_compra_fecha = DateTime.Today;
        }

        public bool ValidarCarroCompra()
        {
            bool v = false;

            return v;
        }

        public void AgregarProductoCarro()
        {

        }

        public void PagarCarroCompra()
        {

        }

        public void ElimimarCarroCompra()
        {

        }

        public void EliminarProductosCarro()
        {

        }

        public string ImprimirCarroCompra()
        {
            string d = "";
            d += "-- CARRO DE COMPRAS --"
                + "Id: " + Car_compra_id
                + "Total: " + Car_compra_total
                + "Cantidad de articulos: " + Car_compra_cant_articul
                + "Fecha: " + Car_compra_fecha
                + "Puntos acumulados: " + CalcularPuntosPorCompra();

            return d;
        }

        public int CalcularPuntosPorCompra()
        {
            int p = 0;
            p = (producto.Pro_ptos_por_compra);
            return p;
        }

        public double TotalizarCompra()
        {
            double t = 0;

            return t;
        }
        #endregion
    }
}
