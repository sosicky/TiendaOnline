//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccesoDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class Usuario
    {
        public Usuario()
        {
            this.Boleta = new HashSet<Boleta>();
        }
    
        public int idUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public Nullable<System.DateTime> FechaNacimiento { get; set; }
        public string Usuario1 { get; set; }
        public string Password { get; set; }
        public Nullable<int> Puntos { get; set; }
    
        public virtual ICollection<Boleta> Boleta { get; set; }
    }
}