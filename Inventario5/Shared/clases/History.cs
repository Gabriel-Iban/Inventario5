using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Inventario5.Shared.clases {
    public class History : List<object> {
        public Object Get(Type tipo) {
            foreach (Object aux in this) {
                if (aux.GetType().Equals(tipo)) {
                    return aux;
                }
            }
            return null;
        }
    }
}
