using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Portatil
    {
        public int Id { get; set; }
        public float? TamanoPantalla { get; set; }

        public virtual Ordenador IdNavigation { get; set; }
    }
}
