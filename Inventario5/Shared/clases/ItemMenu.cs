using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Inventario5.Shared.clases {
    public class ItemMenu {
        public string Texto { get; set; }
        public string Url { get; set; }
        public ItemMenu(string texto, string url) {
            this.Texto = texto;
            this.Url = url;
        }
    }
}
