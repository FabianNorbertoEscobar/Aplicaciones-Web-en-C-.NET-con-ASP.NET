using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fútbol
{
    public interface IPartido
    {
        bool Iniciar(DateTime inicio);
    }
}