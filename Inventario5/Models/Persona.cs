using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Persona
    {
        public Persona()
        {
            ElementoInventariables = new HashSet<ElementoInventariable>();
        }

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }

        public virtual ICollection<ElementoInventariable> ElementoInventariables { get; set; }
    }
}
