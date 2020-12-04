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
        public string Nomb { get; set; }

        public virtual ICollection<ElementoInventariable> ElementoInventariables { get; set; }
    }
}
