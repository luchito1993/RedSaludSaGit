using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.IO;
using System.Globalization;

namespace RedSaludSA.BL
{
    public class PlanBL
    {

        public List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP> consultarBeneficiariosPorContratoWs(string usuario, string clave, string contrato)
        {
            List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP> listaBeneficiarios = new List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP>();
            try
            {
                using (WSConsultaPlanes.WSconsultasSoapClient client = new WSConsultaPlanes.WSconsultasSoapClient())
                {
                    WSConsultaPlanes.Autenticacion autenticacion = new WSConsultaPlanes.Autenticacion();
                    autenticacion.Usuario = usuario;
                    autenticacion.Clave = clave;
                    string retorno = client.devolverContratosPorNumeroContrato(autenticacion, int.Parse(contrato));
                    listaBeneficiarios = this.generarEstructuraDesdeXMLBeneficiarios(retorno);
                    client.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return listaBeneficiarios;
        }

        public List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP> consultarBeneficiariosPorIdentificacionWs(string usuario, string clave, string cedula)
        {
            List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP> listaBeneficiarios = new List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP>();
            try
            {
                using (WSConsultaPlanes.WSconsultasSoapClient client = new WSConsultaPlanes.WSconsultasSoapClient())
                {
                    WSConsultaPlanes.Autenticacion autenticacion = new WSConsultaPlanes.Autenticacion();
                    autenticacion.Usuario = usuario;
                    autenticacion.Clave = clave;
                    string retorno = client.devolverContratosPorCedula(autenticacion, cedula.ToString().Trim());
                    listaBeneficiarios = this.generarEstructuraDesdeXMLBeneficiarios(retorno);
                    client.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return listaBeneficiarios;
        }

        private List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP> generarEstructuraDesdeXMLBeneficiarios(string xml)
        {
            XmlDocument docPrincipal = new XmlDocument();
            List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP> listaBeneficiarios = new List<RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP>();
            CultureInfo ci = (CultureInfo)CultureInfo.CurrentCulture.Clone();
            ci.NumberFormat.CurrencyDecimalSeparator = ".";
            try
            {
                docPrincipal.LoadXml(xml);
                //Primero se verifica si hubo algun error al consultar el producto

                XmlNodeList dataList = docPrincipal.GetElementsByTagName("beneficiarios");
                int contadorBeneficiarios = 0;
                foreach (XmlNode dataItem in dataList)
                {

                    RedSaludSA.MD.ModelosPersonalizados.BeneficiarioMP beneficiario = new MD.ModelosPersonalizados.BeneficiarioMP();
                    beneficiario.Identificador = contadorBeneficiarios;
                    beneficiario.TipoDocumento = dataItem.SelectSingleNode("tipo_documento") == null ? "" : dataItem.SelectSingleNode("tipo_documento").InnerText;
                    beneficiario.Cedula = dataItem.SelectSingleNode("cedula") == null ? "" : dataItem.SelectSingleNode("cedula").InnerText;
                    beneficiario.Nombres = dataItem.SelectSingleNode("nombres") == null ? "" : dataItem.SelectSingleNode("nombres").InnerText;
                    beneficiario.Apellidos = dataItem.SelectSingleNode("apellidos") == null ? "" : dataItem.SelectSingleNode("apellidos").InnerText;
                    beneficiario.NumeroContrato = dataItem.SelectSingleNode("contrato_numero") == null ? "" : dataItem.SelectSingleNode("contrato_numero").InnerText;
                    beneficiario.NumeroPersona = dataItem.SelectSingleNode("persona_numero") == null ? "" : dataItem.SelectSingleNode("persona_numero").InnerText;
                    beneficiario.Region = dataItem.SelectSingleNode("region") == null ? "" : dataItem.SelectSingleNode("region").InnerText;
                    beneficiario.CodigoProducto = dataItem.SelectSingleNode("codigo_producto") == null ? "" : dataItem.SelectSingleNode("codigo_producto").InnerText;
                    beneficiario.Estado = dataItem.SelectSingleNode("estado") == null ? "" : dataItem.SelectSingleNode("estado").InnerText;
                    beneficiario.Comisiona = dataItem.SelectSingleNode("comisiona") == null ? "" : dataItem.SelectSingleNode("comisiona").InnerText;
                    beneficiario.Observaciones = dataItem.SelectSingleNode("observaciones") == null ? "" : dataItem.SelectSingleNode("observaciones").InnerText;
                    beneficiario.Nivel = dataItem.SelectSingleNode("nivel") == null ? "" : dataItem.SelectSingleNode("nivel").InnerText;
                    beneficiario.FechaInicio = dataItem.SelectSingleNode("fecha_inicio") == null ? "" : dataItem.SelectSingleNode("fecha_inicio").InnerText;
                    beneficiario.Preexistencias = dataItem.SelectSingleNode("preexistencias") == null ? "" : dataItem.SelectSingleNode("preexistencias").InnerText;
                    beneficiario.NumeroEmpresa = dataItem.SelectSingleNode("empresa_numero") == null ? "" : dataItem.SelectSingleNode("empresa_numero").InnerText;
                    beneficiario.NumeroSucursal = dataItem.SelectSingleNode("sucursal_numero") == null ? "" : dataItem.SelectSingleNode("sucursal_numero").InnerText;
                    beneficiario.CodigoPlan = dataItem.SelectSingleNode("codigo_plan") == null ? "" : dataItem.SelectSingleNode("codigo_plan").InnerText;
                    beneficiario.VersionPlan = dataItem.SelectSingleNode("version_plan") == null ? "" : dataItem.SelectSingleNode("version_plan").InnerText;
                    beneficiario.Titular = dataItem.SelectSingleNode("titular") == null ? "" : dataItem.SelectSingleNode("titular").InnerText;
                    beneficiario.Mora = dataItem.SelectSingleNode("mora") == null ? "" : dataItem.SelectSingleNode("mora").InnerText;
                    beneficiario.Carencia = dataItem.SelectSingleNode("carencia") == null ? "" : dataItem.SelectSingleNode("carencia").InnerText;
                    beneficiario.Sexo = dataItem.SelectSingleNode("sexo") == null ? "" : dataItem.SelectSingleNode("sexo").InnerText;
                    beneficiario.EstadoCivil = dataItem.SelectSingleNode("estado_civil") == null ? "" : dataItem.SelectSingleNode("estado_civil").InnerText;
                    beneficiario.FechaNacimiento = dataItem.SelectSingleNode("fecha_nacimiento") == null ? "" : dataItem.SelectSingleNode("fecha_nacimiento").InnerText;
                    beneficiario.Parentesco = dataItem.SelectSingleNode("parentesco") == null ? "" : dataItem.SelectSingleNode("parentesco").InnerText;
                    beneficiario.DiasCarencia = dataItem.SelectSingleNode("dias_carencia") == null ? "" : dataItem.SelectSingleNode("dias_carencia").InnerText;
                    beneficiario.Maternidad = dataItem.SelectSingleNode("maternidad") == null ? "" : dataItem.SelectSingleNode("maternidad").InnerText;
                    beneficiario.AutorizacionesMedicas = dataItem.SelectSingleNode("autorizaciones_medicas") == null ? "" : dataItem.SelectSingleNode("autorizaciones_medicas").InnerText;
                    beneficiario.NumeroAutorizacion = dataItem.SelectSingleNode("numero-autorizacion") == null ? "" : dataItem.SelectSingleNode("numero-autorizacion").InnerText;
                    beneficiario.NumeroProcedimiento = dataItem.SelectSingleNode("Numero-Procedimiento") == null ? "" : dataItem.SelectSingleNode("Numero-Procedimiento").InnerText;
                    beneficiario.CodigoDiagnostico = dataItem.SelectSingleNode("codigo-diagnostico") == null ? "" : dataItem.SelectSingleNode("odigo-diagnostico").InnerText;
                    beneficiario.Fobservaciones = dataItem.SelectSingleNode("Observaciones") == null ? "" : dataItem.SelectSingleNode("Observaciones").InnerText;
                    beneficiario.FechaFinContrato = dataItem.SelectSingleNode("fecha_fin_contrato") == null ? "" : dataItem.SelectSingleNode("fecha_fin_contrato").InnerText;
                    beneficiario.TieneDeducible = dataItem.SelectSingleNode("tiene_deducible") == null ? "" : dataItem.SelectSingleNode("tiene_deducible").InnerText; ;
                    beneficiario.MontoDeduciblePlan = dataItem.SelectSingleNode("monto_deducible_plan") == null ? "" : dataItem.SelectSingleNode("monto_deducible_plan").InnerText;
                    beneficiario.MontoPresentado = dataItem.SelectSingleNode("monto_presentado") == null ? "" : dataItem.SelectSingleNode("monto_presentado").InnerText;
                    beneficiario.OdasAsignadas = dataItem.SelectSingleNode("Odas_Asignadas") == null ? "" : dataItem.SelectSingleNode("Odas_Asignadas").InnerText;
                    beneficiario.OdasUsadas = dataItem.SelectSingleNode("Odas_Usadas") == null ? "" : dataItem.SelectSingleNode("Odas_Usadas").InnerText;
                    beneficiario.ListaBloqueada = dataItem.SelectSingleNode("bloqueo") == null ? "" : dataItem.SelectSingleNode("bloqueo").InnerText;
                    beneficiario.FechaNacimientoD = beneficiario.FechaNacimiento == "" ? DateTime.Now : DateTime.Parse(beneficiario.FechaNacimiento.ToString());
                    beneficiario.FechaInicioD = beneficiario.FechaInicio == "" ? DateTime.Now : DateTime.Parse(beneficiario.FechaInicio.ToString());
                    beneficiario.FechaFinContratoD = beneficiario.FechaFinContrato == "" ? DateTime.Now : DateTime.Parse(beneficiario.FechaFinContrato.ToString());
                    // Difference in days, hours, and minutes.
                    TimeSpan diferenciaEntreFechas = DateTime.Now - beneficiario.FechaNacimientoD;
                    beneficiario.Edad = int.Parse(Math.Truncate(decimal.Parse(diferenciaEntreFechas.Days.ToString()) / 365).ToString());
                    listaBeneficiarios.Add(beneficiario);
                    contadorBeneficiarios++;
                }




            }
            catch (Exception ex)
            {
                throw new Exception(String.Format("Error al leer el xml de respuesta de consulta de planes; Error generado : {0} ; Xml de entrada : {1}", ex.Message, xml));
            }

            return listaBeneficiarios;
        }

    }
}
