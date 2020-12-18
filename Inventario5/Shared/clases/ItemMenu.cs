using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Inventario5.Shared.clases {
    public class ItemMenu {
        public string Texto { get; set; }
        public string IconName { get; set; }
        public string Url { get; set; }
        public ItemMenu(string texto, string iconName, string url) {

            this.Texto = texto;
            this.IconName = iconName;
            this.Url = url;
        }
    }
}
