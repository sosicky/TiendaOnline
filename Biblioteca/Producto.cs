using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class Producto : CarroCompra
    {
        #region campos
        private string _pro_id;
        private string _pro_name;
        private TipoProducto _pro_tipo;
        private double _pro_precio;
        private int _pro_ptos_por_compra;
        private int _pro_ptos_para_canjear;
        #endregion

        #region propiedades
        public string Pro_id
        {
            get
            {
                return _pro_id;
            }

            set
            {
                _pro_id = value;
            }
        }

        public string Pro_name
        {
            get
            {
                return _pro_name;
            }

            set
            {
                _pro_name = value;
            }
        }

        public TipoProducto Pro_tipo
        {
            get
            {
                return _pro_tipo;
            }

            set
            {
                _pro_tipo = value;
            }
        }

        public double Pro_precio
        {
            get
            {
                return _pro_precio;
            }

            set
            {
                _pro_precio = value;
            }
        }

        public int Pro_ptos_por_compra
        {
            get
            {
                return _pro_ptos_por_compra;
            }

            set
            {
                _pro_ptos_por_compra = value;
            }
        }

        public int Pro_ptos_para_canjear
        {
            get
            {
                return _pro_ptos_para_canjear;
            }

            set
            {
                _pro_ptos_para_canjear = value;
            }
        }

        public TipoProducto TipoProducto
        {
            get
            {
                throw new System.NotImplementedException();
            }

            set
            {
            }
        }
        #endregion

        #region constructores
        public Producto()
        {
            this.Init();
        }
        public Producto(string pro_id, string pro_name, TipoProducto pro_tipo, double pro_precio,
                        int pro_ptos_por_compra, int pro_ptos_para_canjear)
        {
            Pro_id = pro_id;
            Pro_name = pro_name;
            Pro_tipo = TipoProducto.Seleccione;
            Pro_precio = 0;
            Pro_ptos_por_compra = pro_ptos_por_compra;
            Pro_ptos_para_canjear = _pro_ptos_para_canjear;
        }
        #endregion

        #region metodos
        public void Init()
        {
            _pro_id = string.Empty;
            _pro_name = string.Empty;
            _pro_tipo = TipoProducto.Seleccione;
            _pro_precio = 0;
            _pro_ptos_por_compra = 0;
            _pro_ptos_para_canjear = 0;
        }

        public bool ValidarProducto()
        {
            bool v = false;

            return v;
        }

        public void AgregarProductosWeb()
        {

        }

        public void EliminarProducto()
        {

        }

        public string ImprimirProductosWeb()
        {
            string d = "";
            d += "-- PRODUCTOS WEB --"
                + "Id: " + Pro_id
                + "Name: " + Pro_name
                + "Tipo: " + TipoProducto.Seleccione
                + "Precio: $" + Pro_precio
                + "Puntos por compra: " + Pro_ptos_por_compra
                + "Puntos para canjear: " + Pro_ptos_para_canjear;
            return d;
        }



        #endregion
    }
}
