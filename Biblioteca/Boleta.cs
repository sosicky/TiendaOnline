using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class Boleta
    {
        #region Campos
        private string _bol_id;
        private DateTime _bol_fecha;
        private double _bol_total;
        private double _bol_cant_product;
        private double _bol_ptos_acumulados;
        private CarroCompra _carroCompra;
        #endregion

        #region propiedades
        public string Bol_id
        {
            get
            {
                return _bol_id;
            }

            set
            {
                _bol_id = value;
            }
        }

        public DateTime Bol_fecha
        {
            get
            {
                return _bol_fecha;
            }

            set
            {
                _bol_fecha = value;
            }
        }

        public double Bol_total
        {
            get
            {
                return _bol_total;
            }

            set
            {
                _bol_total = value;
            }
        }

        public double Bol_cant_product
        {
            get
            {
                return _bol_cant_product;
            }

            set
            {
                _bol_cant_product = value;
            }
        }

        public double Bol_ptos_acumulados
        {
            get
            {
                return _bol_ptos_acumulados;
            }

            set
            {
                _bol_ptos_acumulados = value;
            }
        }

        public CarroCompra CarroCompra
        {
            get
            {
                return _carroCompra;
            }

            set
            {
                _carroCompra = value;
            }
        }
        #endregion

        #region Constructores
        public Boleta()
        {
            this.Init();
        }
        public Boleta(string bol_id, DateTime bol_fecha, double bol_total, double bol_cant_product, double bol_ptos_acumulados)
        {
            Bol_id = bol_id;
            Bol_fecha = bol_fecha;
            Bol_total = bol_total;
            Bol_cant_product = bol_cant_product;
            Bol_ptos_acumulados = bol_ptos_acumulados;
        }
        #endregion

        #region Metodos
        public void Init()
        {
            _bol_id = string.Empty;
            _bol_fecha = DateTime.Today;
            _bol_total = 0;
            _bol_cant_product = 0;
            _bol_ptos_acumulados = 0;

        }

        public bool ValidarBoleta()
        {
            bool v = false;

            return v;
        }       

        public void AgregarBoleta()
        {

        }

        public void EliminarBoleta()
        {

        }

        public string ImprimirBoleta()
        {
            string d = "";
            d += "-- BOLETA DE COMPRA --"
              + "Id: " + Bol_id
              + "Fecha: " + Bol_fecha
              + "Total: " + Bol_total
              + "Cantidad de produtos: " + Bol_cant_product
              + "Puntos Acumulados: " + Bol_ptos_acumulados;
            return d;
        }

        #endregion
    }
}
