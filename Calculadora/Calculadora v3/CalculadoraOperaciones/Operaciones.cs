using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraOperaciones
{
    public class Operaciones
    {
        public static int Sumar(int operando1,int operando2)
        {
            return operando1 + operando2;
        }
        public static int Restar(int operando1, int operando2)
        {
            return operando1 - operando2;
        }
        public static int Multiplicar(int operando1, int operando2)
        {
            return operando1 * operando2;
        }
        public static int Dividir(int operando1, int operando2)
        {
            return operando1 / operando2;
        }
    }
}
