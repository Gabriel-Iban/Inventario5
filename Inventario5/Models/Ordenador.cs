using System;
using System.Collections.Generic;

#nullable disable

namespace Inventario5.Models
{
    public partial class Ordenador
    {
        public int Id { get; set; }
        public string Nomb { get; set; }
        public string NumeroSerie { get; set; }
        public int? Memoria { get; set; }
        public byte? UnidadMemoria { get; set; }
        public int? DiscoDuro { get; set; }
        public byte? UnidadDiscoDuro { get; set; }
        public int? IdProcesador { get; set; }
        public float? VelocidadProcesador { get; set; }

        public virtual ElementoInventariable IdNavigation { get; set; }
        public virtual Procesador IdProcesadorNavigation { get; set; }
        public virtual Unidad UnidadDiscoDuroNavigation { get; set; }
        public virtual Unidad UnidadMemoriaNavigation { get; set; }
        public virtual Portatil Portatil { get; set; }
        public virtual Workstation Workstation { get; set; }
    }
}
