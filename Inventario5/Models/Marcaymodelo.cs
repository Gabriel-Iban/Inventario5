using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Marcaymodelo
    {
        public Marcaymodelo()
        {
            ElementoInventariables = new HashSet<ElementoInventariable>();
        }

        public int Id { get; set; }
        public string Nombre { get; set; }

        public virtual ICollection<ElementoInventariable> ElementoInventariables { get; set; }
    }
}
