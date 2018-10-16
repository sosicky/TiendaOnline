using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca;

namespace Presentacion
{
    public partial class ListarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                //coleccion
                List<Usuario> usuarios = (List<Usuario>)Session["listaUsuarios"];

                //condicion su estubiera vacia la lista
                if (usuarios == null)
                {
                    usuarios = new List<Usuario>();
                }

                //asignar colecciona la grilla
                GvUsuarios.DataSource = usuarios;
                GvUsuarios.DataBind();
            }
        }

        //evento generado para borrar usuario
        protected void GvUsuarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //coleccion de la session
            List<Usuario> usuarios = (List<Usuario>)Session["listaUsuarios"];

            //seleccionar lista a eliminar
            usuarios.RemoveAt(e.RowIndex);

            //actualizar lista
            GvUsuarios.DataSource = usuarios;
            GvUsuarios.DataBind();
        }

        //evento generado para editar usuario
        protected void GvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            //redireccionamiento a pagina editar
            //i = es el indice de la fila seleccionada
            Response.Redirect("EditarUsuarios.aspx?i=" + GvUsuarios.SelectedIndex);
        }
    }
}