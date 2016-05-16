using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RedSaludSA.MD;
using System.Configuration;

namespace RedSaludSA.DAL
{
    public class UsuarioDAL : IUsuarioDAL
    {
        DbRedSaludsaEntities saludContexto=null;
        public MD.RSA_Usuario iniciarSesion(MD.RSA_Usuario usuario)
        {
            RSA_Usuario RSA_Usuario = new RSA_Usuario();
            saludContexto = new DbRedSaludsaEntities();
            RSA_Usuario = (from user in saludContexto.RSA_Usuario
                                     where user.usu_nombre.ToUpper() == usuario.usu_nombre.ToUpper() && user.usu_contrasena == usuario.usu_contrasena
                                   && user.usu_estado == usuario.usu_estado
                                     select user).FirstOrDefault();
             return RSA_Usuario;


        }
    }
}
