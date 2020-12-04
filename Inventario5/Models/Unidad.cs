using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Unidad
    {
        public Unidad()
        {
            OrdenadorUnidadDiscoDuroNavigations = new HashSet<Ordenador>();
            OrdenadorUnidadMemoriaNavigations = new HashSet<Ordenador>();
        }

        public byte Id { get; set; }
        public string Nomb { get; set; }

        public virtual ICollection<Ordenador> OrdenadorUnidadDiscoDuroNavigations { get; set; }
        public virtual ICollection<Ordenador> OrdenadorUnidadMemoriaNavigations { get; set; }
    }
}
