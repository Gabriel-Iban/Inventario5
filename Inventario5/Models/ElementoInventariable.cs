using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class ElementoInventariable
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Notas { get; set; }
        public int? IdPersona { get; set; }
        public int? IdUbicacion { get; set; }
        public int? IdMarcaYmodelo { get; set; }

        public virtual Marcaymodelo IdMarcaYmodeloNavigation { get; set; }
        public virtual Persona IdPersonaNavigation { get; set; }
        public virtual Ubicacion IdUbicacionNavigation { get; set; }
        public virtual Monitor Monitor { get; set; }
        public virtual Ordenador Ordenador { get; set; }
    }
}
