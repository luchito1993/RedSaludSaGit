using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace RedSaludSA.BL
{
    public class CabeceraWsBL
    {
        public string pUsuario { get; set; }
        public string pPassword { get; set; }

        /// <summary>
        /// Método que genera la cabecera del XML que será enviado por el servicio web
        /// </summary>
        /// <param name="doc"></param>
        /// <returns></returns>
        protected XmlElement generarCabeceraConsultas(ref XmlDocument doc)
        {

            XmlDeclaration xmlDeclaration = doc.CreateXmlDeclaration("1.0", "UTF-8", null);
            doc.AppendChild(xmlDeclaration);

            XmlElement root = doc.CreateElement(string.Empty, "parametro", string.Empty);
            XmlElement nodoCredencial = doc.CreateElement(string.Empty, "Autenticacion", string.Empty);

            XmlElement user = doc.CreateElement(string.Empty, "Usuario", string.Empty);
            XmlText xmlUserText = doc.CreateTextNode(this.pUsuario);
            user.AppendChild(xmlUserText);

            XmlElement pwd = doc.CreateElement(string.Empty, "Clave", string.Empty);
            XmlText xmlUserPwd = doc.CreateTextNode(this.pPassword);
            pwd.AppendChild(xmlUserPwd);

            nodoCredencial.AppendChild(user);
            nodoCredencial.AppendChild(pwd);

            root.AppendChild(nodoCredencial);

            return root;
        }
    }
}
