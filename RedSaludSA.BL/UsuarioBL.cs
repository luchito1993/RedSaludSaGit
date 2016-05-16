using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
using RedSaludSA.DAL;
using RedSaludSA.MD;

namespace RedSaludSA.BL
{
    public class UsuarioBL
    {

        public IUsuarioDAL UsuarioDAL { get; set; }

        private string encriptarCadena(string cadenaEncriptar)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(cadenaEncriptar));
            byte[] result = md5.Hash;
            StringBuilder strBuilder = new StringBuilder();
            for (int contadorBytes = 0; contadorBytes < result.Length; contadorBytes++)
            {
                strBuilder.Append(result[contadorBytes].ToString("x2"));
            }
            return strBuilder.ToString();
        }


        public MD.RSA_Usuario iniciarSesion(MD.RSA_Usuario usuario)
        {
            RSA_Usuario RSA_Usuario = new RSA_Usuario();
            RSA_Usuario.usu_contrasena = encriptarCadena(usuario.usu_contrasena);
            RSA_Usuario.usu_nombre = usuario.usu_nombre;
            RSA_Usuario.usu_estado = usuario.usu_estado;
            return UsuarioDAL.iniciarSesion(RSA_Usuario);
        }

    }
}
