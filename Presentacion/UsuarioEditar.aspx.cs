using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace Presentacion
{
    public partial class EditarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (!Page.IsPostBack)
                {
                    int indice = int.Parse(Request["i"]);//asignamos la variable del indice

                    //asignar elementos de la coleccion
                    List<Usuario> usuarios = (List<Usuario>)Session["listaUsuarios"];

                    //se genera un id segun nombre y pais
                    string id = (TxtEditNombre.Text + "000" + DlEditPais.SelectedValue.ToString());

                    id = usuarios[indice].Usr_id;
                    TxtEditPass.Text = usuarios[indice].Usr_passwd;
                    TxtEditNombre.Text = usuarios[indice].Usr_name;
                    TxtEditFechaNacimiento.Text = usuarios[indice].Usr_fecha_nacimiento;
                    DlEditPais.SelectedValue = usuarios[indice].Usr_pais;

                    HfIndice.Value = indice.ToString();//asignacion del indice
                }
            }
            catch (Exception)
            {
                Response.Redirect("ListarUsuarios.aspx");
            }
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            //redireccionamiento
            Response.Redirect("ListarUsuarios.aspx");
        }

        protected void BtnEditarUsuario_Click(object sender, EventArgs e)
        {
            List<Usuario> usuarios = (List<Usuario>)Session["listaUsuarios"];

            int indice = int.Parse(HfIndice.Value);

            //asignaciones
            usuarios[indice].Usr_fecha_nacimiento = TxtEditFechaNacimiento.Text.Trim();
            usuarios[indice].Usr_id = TxtEditNombre.Text.Trim() + "000" + DlEditPais.SelectedValue.ToString();
            usuarios[indice].Usr_name = TxtEditNombre.Text.Trim();
            usuarios[indice].Usr_pais = DlEditPais.SelectedValue.ToString();
            usuarios[indice].Usr_passwd = TxtEditPass.Text.Trim();

            //redireccionamiento
            Response.Redirect("ListarUsuarios.aspx");
        }
    }
}