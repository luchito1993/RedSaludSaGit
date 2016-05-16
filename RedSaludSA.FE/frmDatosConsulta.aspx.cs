using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RedSaludSA.MD;
using System.Configuration;
namespace RedSaludSA.FE
{
    public partial class frmDatosConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["beneficiario"] != null)
                {
                    MD.ModelosPersonalizados.BeneficiarioMP beneficiario = new MD.ModelosPersonalizados.BeneficiarioMP();
                    beneficiario = (MD.ModelosPersonalizados.BeneficiarioMP)Session["beneficiario"];
                    if (beneficiario != null)
                    {
                        txt_Contrato.Text = beneficiario.NumeroContrato.Trim();
                        txt_id_paciente.Text = beneficiario.Cedula.Trim();
                        txt_Nivel.Text = beneficiario.Nivel.Trim();
                        txt_Paciente.Text = beneficiario.Nombres.Trim() + " " + beneficiario.Apellidos.Trim();
                        txt_Plan.Text = beneficiario.CodigoPlan;
                        txt_FechaVigencia.Text = beneficiario.FechaInicioD.ToShortDateString();
                        txt_Informacion.Text = "";
                        if (beneficiario.Mora.ToUpper().Trim() == ConfigurationManager.AppSettings["tieneMora"] || beneficiario.Estado != ConfigurationManager.AppSettings["estadoContratoActivo"] || bool.Parse(beneficiario.ListaBloqueada.Trim().ToString()))
                        {
                            txt_Informacion.Text += ConfigurationManager.AppSettings["mensajeNoBeneficioGeneral"] + "\n";
                        }
                        if (beneficiario.Carencia.ToUpper().Trim() == ConfigurationManager.AppSettings["tieneCarencia"])
                        {
                            txt_Informacion.Text += ConfigurationManager.AppSettings["mensajeNoBeneficioCarencia"] + "\n";
                        }

                        if (int.Parse(beneficiario.OdasUsadas) >= int.Parse(beneficiario.OdasAsignadas))
                        {
                            txt_Informacion.Text += ConfigurationManager.AppSettings["mensajeMaximoOdasCumplidas"] + "\n";
                        }

                        if (txt_Informacion.Text.Trim() != "")
                        {
                            btnConfirmar.Visible = false;
                            pnl_AyudaGenerar.Visible = false;
                        }
                        else
                        {
                            btnConfirmar.Visible = true;
                            pnl_AyudaGenerar.Visible = true;
                        }
                    }
                }
            }
        }

        protected void btn_Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmConsultaPlanes.aspx");
        }
    }
}