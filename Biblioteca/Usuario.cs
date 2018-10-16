using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca
{
    public class Usuario : Boleta
    {
        #region campos
        private string _usr_id;
        private string _usr_passwd;
        private string _usr_name;
        private string _usr_fecha_nacimiento;
        private string _usr_pais;
        private int _usr_ptos_acum;
        #endregion

        #region propiedades
        public string Usr_id
        {
            get
            {
                return _usr_id;
            }

            set
            {
                _usr_id = value;
            }
        }

        public string Usr_passwd
        {
            get
            {
                return _usr_passwd;
            }

            set
            {
                _usr_passwd = value;
            }
        }

        public string Usr_name
        {
            get
            {
                return _usr_name;
            }

            set
            {
                _usr_name = value;
            }
        }

        public string Usr_fecha_nacimiento
        {
            get
            {
                return _usr_fecha_nacimiento;
            }

            set
            {
                _usr_fecha_nacimiento = value;
            }
        }

        public string Usr_pais
        {
            get
            {
                return _usr_pais;
            }

            set
            {
                _usr_pais = value;
            }
        }

        public int Usr_ptos_acum
        {
            get
            {
                return _usr_ptos_acum;
            }

            set
            {
                _usr_ptos_acum = value;
            }
        }
        #endregion

        #region Constructores
        public Usuario()
        {
            this.Init();
        }
        public Usuario(string usr_id, string usr_passwd, string usr_name, string usr_fecha_nacimiento,
                        string usr_pais)
        {
            Usr_id = usr_id;
            Usr_passwd = usr_passwd;
            Usr_name = usr_name;
            Usr_fecha_nacimiento = usr_fecha_nacimiento;
            Usr_pais = usr_pais;
        }
        #endregion

        #region metodos
        public void Init()
        {
            _usr_id = string.Empty;
            _usr_passwd = string.Empty;
            _usr_name = string.Empty;
            _usr_fecha_nacimiento = string.Empty;
            _usr_pais = string.Empty;
            _usr_ptos_acum = 0;
        }

        public bool ValidarUsuario()
        {
            bool v = false;

            return v;
        }

        public void AgregarUsuario()
        {

        }

        public void EliminarUser()
        {

        }

        public string ImprimirUsuer()
        {
            string d = "";
            d += "-- DATOS USUARIO --"
                + "Id: " + Usr_id
                + "Password: " + Usr_passwd
                + "Name: " + Usr_name
                + "Fecha nacimiento: " + Usr_fecha_nacimiento
                + "Pais: " + Usr_pais
                + "Ptos acumulados: " + Usr_ptos_acum;
            return d;
        }

        public int ActualizarPuntos()
        {
            int p = 0;

            return p;
        }

        public bool ValidarPuntos()
        {
            bool v = false;

            return v;
        }

        public void CanjearPuntos()
        {

        }
        #endregion
    }
}
