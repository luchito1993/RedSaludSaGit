using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RedSaludSA.MD;

namespace RedSaludSA.DAL
{
   public  interface IUsuarioDAL
    {

         RSA_Usuario iniciarSesion(RSA_Usuario usuario);

    }
}
