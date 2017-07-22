using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraOperaciones
{
    public class Operacion
    {
        public string codigo { get; set; }
        public string nombre { get; set; }

        List<Operacion> operaciones = new List<Operacion>();

        public enum eOperacion
            {   
                sumar=1,
                restar=2,
                multiplicar=3,
                dividir=4,
            }
        
        public static void inicializarOperacion()
            {
                Operacion op=new Operacion();

                op.nombre = "Escoja Operación";
                op.codigo = "0";
                op.operaciones.Add(op); 

                op.nombre="Sumar";
                op.codigo="1";
                op.operaciones.Add(op);       
            
                op.nombre="Restar";
                op.codigo="2";
                op.operaciones.Add(op);

                op.nombre="Multiplicar";
                op.codigo="3";
                op.operaciones.Add(op);

                op.nombre="Dividir";
                op.codigo="4";
                op.operaciones.Add(op);
            }
    }
}
