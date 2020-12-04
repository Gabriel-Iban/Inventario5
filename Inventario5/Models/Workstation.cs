using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Workstation
    {
        public Workstation()
        {
            Monitors = new HashSet<Monitor>();
        }

        public int Id { get; set; }

        public virtual Ordenador IdNavigation { get; set; }
        public virtual ICollection<Monitor> Monitors { get; set; }
    }
}
