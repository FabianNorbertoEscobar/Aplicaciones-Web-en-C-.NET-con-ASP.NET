using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraOperaciones
{
    public class Operaciones
    {
        public static double Sumar(double operando1, double operando2)
        {
            return operando1 + operando2;
        }
        public static double Restar(double operando1, double operando2)
        {
            return operando1 - operando2;
        }
        public static double Multiplicar(double operando1, double operando2)
        {
            return operando1 * operando2;
        }
        public static double Dividir(double operando1, double operando2)
        {
            return operando1 / operando2;
        }
    }
}
