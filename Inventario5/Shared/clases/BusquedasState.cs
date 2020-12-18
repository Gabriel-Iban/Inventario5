using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Inventario5.Shared.clases {
    public class BusquedasState : IHistoryItem {
        public bool BuscarPortatil { get; set; } =true;
        public bool BuscarWorkstation { get; set; } = true;
        public bool BuscarMonitor { get; set; } = true;
        public string ElementoInventariableCodigo { get; set; }
        public string OrdenadorNomb { get; set; }
        public string OrdenadorNumeroSerie { get; set; }
        public int? IdPersona { get; set; }
        public int? IdUbicacion { get; set; }
        public int? IdMarcaymodelo { get; set; }
    }
}
