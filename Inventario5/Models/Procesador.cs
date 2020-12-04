using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Procesador
    {
        public Procesador()
        {
            Ordenadors = new HashSet<Ordenador>();
        }

        public int Id { get; set; }
        public string Nomb { get; set; }

        public virtual ICollection<Ordenador> Ordenadors { get; set; }
    }
}
