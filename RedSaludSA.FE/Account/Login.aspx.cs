using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RedSaludSA.MD;
using RedSaludSA.BL;
using System.Configuration;
using RedSaludSA.DAL;


namespace RedSaludSA.FE.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { 
            
            }
        }

        //Metodo que 
        public void iniciarSesion()
        {

            try
            {
                RSA_Usuario Usuario = new RSA_Usuario();
                UsuarioBL logicaUsuario = new UsuarioBL();
                Usuario.usu_nombre = HttpUtility.HtmlDecode(txtUsuario.Value.Trim());
                Usuario.usu_contrasena = HttpUtility.HtmlDecode(txtPassword.Value.ToString().Trim());
                Usuario.usu_estado = ConfigurationManager.AppSettings["estadoActivo"].ToString();
                logicaUsuario.UsuarioDAL = new UsuarioDAL();
                Usuario = logicaUsuario.iniciarSesion(Usuario);
                if (Usuario != null)
                {
                    Session.Add("usuario", Usuario.usu_nombre);
                    if (Usuario.RSA_Prestador != null)
                    {
                        Session.Add("idDoctor", Usuario.RSA_Prestador.ToList().FirstOrDefault().pre_id);
                        Session.Add("nombreUsuario", Usuario.RSA_Prestador.ToList().FirstOrDefault().pre_nombres.Trim() + " " + Usuario.RSA_Prestador.ToList().FirstOrDefault().pre_apellidos.Trim());
                        Session.Add("nivelInicial", Usuario.RSA_Prestador.ToList().FirstOrDefault().pre_nivelDesde);
                        Session.Add("nivelFinal", Usuario.RSA_Prestador.ToList().FirstOrDefault().pre_nivelHasta);
                    }
                    Response.Redirect("~/frmConsultaPlanes.aspx");
                }
                else
                {

                    ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alertify.alert('Usuario y contraseña son incorrectas o no existen');", true);
                }
            }
            catch (Exception ex)
            { 
            
            }
        }



        protected void lkbIngresar_Click(object sender, EventArgs e)
        {
            iniciarSesion();
        }
    }

}

