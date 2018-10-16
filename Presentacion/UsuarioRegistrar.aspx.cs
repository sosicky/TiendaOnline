using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace Presentacion
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrarUsuario_Click(object sender, EventArgs e)
        {

            List<Usuario> usuarios = (List<Usuario>)Session["listaUsuarios"];

            //condicion si la lista estuviera vacia
            if (usuarios == null)
            {
                usuarios = new List<Usuario>();//se crea una instancia
            }

            //asignar campos a la colección
            usuarios.Add(new Usuario()
            {
                Usr_fecha_nacimiento = TxtFechaNacimiento.Text.Trim(),
                Usr_id = TxtNombre.Text.Trim() + "000" + DlPais.SelectedValue.ToString(),
                Usr_name = TxtNombre.Text.Trim(),
                Usr_pais = DlPais.SelectedValue.ToString(),
                Usr_passwd = TxtPass.Text.Trim(),

            });

            //asignar coleccion a la session
            Session["listaUsuarios"] = usuarios;

            //redireccionamiento a perfil
            Response.Redirect("ListarUsuarios.aspx");
        }
    }
}