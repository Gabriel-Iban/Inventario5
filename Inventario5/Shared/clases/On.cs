using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inventario5.Shared.clases {
    public static class On {
        public const string insert = "insert";
        public const string update = "update";
        public const string delete = "delete";
        public static string getText (string operation) {
            switch (operation) {
                case On.insert: return "Añadir";
                case On.update: return "Modificar";
                case On.delete: return "Eliminar";
            }
            return "Operación Desconocida";
        }
        public static string generateButtons(string tableName,int id) {
            StringBuilder sb = new StringBuilder();
            sb.Append($"<a class=\"btn btn-primary\" href=\"{tableName}FE/update/{id}\">Modificar</a>");
            sb.Append(" ");
            sb.Append($"<a class=\"btn btn-primary\" href=\"{tableName}FE/delete/{id}\">Eliminar</a>");
            return sb.ToString();
        }
    }
}
