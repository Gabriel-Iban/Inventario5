using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Monitor
    {
        public int Id { get; set; }
        public byte? TamanoPantalla { get; set; }
        public int? ResolucionX { get; set; }
        public int? ResolucionY { get; set; }
        public int? IdWorkstation { get; set; }

        public virtual ElementoInventariable IdNavigation { get; set; }
        public virtual Workstation IdWorkstationNavigation { get; set; }
    }
}
