using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
namespace LogicaNegocio
{
    [DataObject]
    public class UsuarioBL
    {
        TiendaOnlineEntities bd = new TiendaOnlineEntities();

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Usuario> ListarUsuarios()
        {
            return bd.Usuario.ToList();
        }
    }
}
