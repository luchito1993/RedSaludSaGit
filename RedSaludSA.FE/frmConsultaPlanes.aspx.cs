using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RedSaludSA.BL;
using System.Configuration;
using RedSaludSA.MD;


namespace RedSaludSA.FE
{
    public partial class frmConsultaPlanes : System.Web.UI.Page
    {

        private PlanBL logicaPlan = null;

        private List<MD.ModelosPersonalizados.BeneficiarioMP> Beneficiarios
        {
            get { return (List<MD.ModelosPersonalizados.BeneficiarioMP>)Session["beneficiarios"]; }
            set { Session["beneficiarios"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            consultarBeneficiarios();
        }

        private void consultarBeneficiarios()
        {
            try
            {
                Beneficiarios = new List<MD.ModelosPersonalizados.BeneficiarioMP>();
                if (txt_Cedula.Text != "" && txt_Contrato.Text != "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertScript", "alertify.alert('No se puede realizar la búsqueda por ambos filtros. Por favor, borre uno de ellos.');", true);
                    return;
                }

                if (txt_Cedula.Text == "" && txt_Contrato.Text == "")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertScript", "alertify.alert('Por favor, debe ingresar por lo menos un filtro de búsqueda.');", true);
                    return;
                }

                logicaPlan = new PlanBL();

                if (txt_Cedula.Text != "")
                {
                    //Consulta por identificacion
                    Beneficiarios = logicaPlan.consultarBeneficiariosPorIdentificacionWs(ConfigurationManager.AppSettings["usuarioWS"].ToString(), ConfigurationManager.AppSettings["claveWS"].ToString(), txt_Cedula.Text.Trim());
                }
                else
                {
                    //consulta por contrato
                    Beneficiarios = logicaPlan.consultarBeneficiariosPorContratoWs(ConfigurationManager.AppSettings["usuarioWS"].ToString(), ConfigurationManager.AppSettings["claveWS"].ToString(), txt_Contrato.Text.Trim());
                }

                pnl_Resultado.Visible = true;
                grv_Planes_Individuales.DataSource = null;
                grv_Planes_Corporativos.DataSource = null;
                grv_Planes_Oncologicos.DataSource = null;
                grv_Planes_Pool.DataSource = null;
                if (Beneficiarios.Count > 0)
                {
                    grv_Planes_Individuales.DataSource = Beneficiarios.Where(x => x.CodigoProducto.Trim() == ConfigurationManager.AppSettings["PINDIVIDUAL"].ToString()).OrderBy(x => x.Apellidos).ToList();
                    grv_Planes_Corporativos.DataSource = Beneficiarios.Where(x => x.CodigoProducto.Trim() == ConfigurationManager.AppSettings["PCOORPORATIVO"].ToString()).OrderBy(x => x.Apellidos).ToList();
                    grv_Planes_Oncologicos.DataSource = Beneficiarios.Where(x => x.CodigoProducto.Trim() == ConfigurationManager.AppSettings["PONCOLOGICO"].ToString()).OrderBy(x => x.Apellidos).ToList();
                    grv_Planes_Pool.DataSource = Beneficiarios.Where(x => x.CodigoProducto.Trim() == ConfigurationManager.AppSettings["PPOOL"].ToString()).OrderBy(x => x.Apellidos).ToList();
                }
                grv_Planes_Individuales.DataBind();
                grv_Planes_Corporativos.DataBind();
                grv_Planes_Oncologicos.DataBind();
                grv_Planes_Pool.DataBind();
            }
            catch (Exception ex)
            {
                pnl_Resultado.Visible = false;
            }
        }

        protected void grv_Planes_Individuales_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            seleccionarPlan(ref grv_Planes_Individuales, e);

        }

        protected void grv_Planes_Corporativos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            seleccionarPlan(ref grv_Planes_Corporativos, e);

        }

        protected void grv_Planes_Oncologicos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            seleccionarPlan(ref grv_Planes_Oncologicos, e);

        }

        protected void grv_Planes_Pool_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            seleccionarPlan(ref grv_Planes_Pool, e);

        }


        private void seleccionarPlan(ref GridView grv_Plan, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Seleccionar")
                {
                    /* SE LLAMA A UNA NUEVA PAGINA DEL MANTENIMIENTO */
                    int indiceFila = Convert.ToInt32(e.CommandArgument);
                    int codigoIdentificador = int.Parse(grv_Plan.DataKeys[indiceFila - (grv_Plan.PageIndex * grv_Plan.PageSize)].Values["Identificador"].ToString());
                    MD.ModelosPersonalizados.BeneficiarioMP beneficiariosSeleccionado = new MD.ModelosPersonalizados.BeneficiarioMP();
                    beneficiariosSeleccionado = Beneficiarios.Where(x => x.Identificador == codigoIdentificador).FirstOrDefault();
                    if (beneficiariosSeleccionado != null)
                    {
                        Session.Add("beneficiario", beneficiariosSeleccionado);
                        Response.Redirect("frmDatosConsulta.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertScript", "alertify.alert('No se pudo escoger ese plan.');", true);
                    }
                }

            }
            catch (Exception ex)
            {

            }

        }
    }
}