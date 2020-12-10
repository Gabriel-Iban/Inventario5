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
        public const string select = "select";//permitirá seleccionar en una lista
        public const string show = "show";//permitirá mostrar valores en una lista pero no seleccionar
        public static string getText(string operation) {
            switch (operation) {
                case On.insert: return "Añadir";
                case On.update: return "Modificar";
                case On.delete: return "Eliminar";
                case On.select: return "Seleccionar";
                case On.show: return "Lista";
            }
            return "Operación Desconocida";
        }

        public static string generateButtons(string tableName, string operation, int id) {
            StringBuilder sb = new StringBuilder();
            sb.Append("<div style=\"white-space: nowrap;\">");
            if ((operation != null) && (operation.Equals(On.select))) {
                sb.Append($"<a class=\"btn btn-primary\" href=\"{tableName}FE/select/{id}\">Seleccionar</a>");
                sb.Append(" ");
            }
            sb.Append($"<a class=\"btn btn-primary\" href=\"{tableName}FE/update/{id}\">Modificar</a>");
            sb.Append(" ");
            sb.Append($"<a class=\"btn btn-primary\" href=\"{tableName}FE/delete/{id}\">Eliminar</a>");
            sb.Append("</div>");
            return sb.ToString();
        }

        public static string generateNavigateTo(string pagina, string operacion, int id) {
            return $"{pagina}/{operacion}/{id}";
        }
    }
}
