<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="frmDatosConsulta.aspx.cs" Inherits="RedSaludSA.FE.frmDatosConsulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link href="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/plugins/dynatree/src/skin-vista/ui.dynatree.css">
    <script type="text/javascript" src="/js/bs.pagination.js"></script>
    <link rel="stylesheet" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- start: PAGE HEADER -->
    <div class="row">
        <div class="col-sm-12">
            <!-- start: PAGE TITLE & BREADCRUMB -->
            <ol class="breadcrumb">
                <li><i class="clip-cog-2"></i><a href="#">Módulo de Beneficios </a></li>
                <li class="clip-cog-2"><a href="frmConsultaPlanes.aspx">Consulta de Planes</a></li>
                <li class="active">Consulta Médica</li>
            </ol>
            <div class="page-header">
                <h1>
                    Consulta Médica</h1>
            </div>
            <!-- end: PAGE TITLE & BREADCRUMB -->
        </div>
    </div>
    <form id="frm_DatosProducto" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="div_Progreso" style="display: none;">
        <div class="Cargando">
        </div>
    </div>
    <div class="row">
        <div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>Datos del contrato
                </div>
                <div class="panel-body" style="display: block;">
                    <div class="form-horizontal">
                        <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Aqu&iacute puede visualizar
                            los datos del contrato</span>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="col-sm-3 control-label" for="txt_Paciente">
                                    Paciente
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox disabled="true" ID="txt_Paciente" runat="server" class="form-control limited" />
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="col-sm-3 control-label" for="txt_id_paciente">
                                    Identificación Paciente
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox disabled="true" ID="txt_id_paciente" runat="server" class="form-control limited" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="col-sm-3 control-label" for="txt_Contrato">
                                    Contrato
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox disabled="true" ID="txt_Contrato" runat="server" class="form-control limited" />
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="col-sm-3 control-label" for="txt_FechaVigencia">
                                    Fecha de Vigencia
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox disabled="true" ID="txt_FechaVigencia" runat="server" class="form-control limited" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="col-sm-3 control-label" for="txt_Plan">
                                    Plan
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox disabled="true" ID="txt_Plan" runat="server" class="form-control limited" />
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <label class="col-sm-3 control-label" for="txt_Nivel">
                                    Nivel
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox disabled="true" ID="txt_Nivel" runat="server" class="form-control limited" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>Datos de la consulta
                </div>
                <div class="panel-body" style="display: block;">
                    <div class="form-horizontal">
                        <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Aqu&iacute puede visualizar
                            los datos de la consulta</span>
                        <div class="form-group">
                            <div class="col-sm-3" style="text-align: center">
                                <i class="fa fa-user-md fa-4x" aria-hidden="true"></i>
                            </div>
                            <div class="col-sm-9" style="vertical-align: middle">
                                <label class="col-sm-3 control-label" for="txt_ValorConsulta">
                                    Valor Total de la Consulta
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txt_ValorConsulta" runat="server" class="purple form-control limited"
                                        disabled="true" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3" style="text-align: center">
                                <i class="fa fa-hospital-o fa-4x" aria-hidden="true"></i>
                            </div>
                            <div class="col-sm-9">
                                <label class="col-sm-3 control-label" for="txt_ValorCopago">
                                    Valor Crédito Salud
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txt_ValorCopago" runat="server" class="purple form-control limited"
                                        disabled="true" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-3" style="text-align: center">
                                <i class="fa fa-user fa-4x" aria-hidden="true"></i>
                            </div>
                            <div class="col-sm-9">
                                <label class="col-sm-3 control-label" for="txt_ValorCliente">
                                    Valor a pagar por el cliente
                                </label>
                                <div class="col-sm-9">
                                    <asp:TextBox ID="txt_ValorCliente" runat="server" class="purple form-control limited"
                                        disabled="true" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <label class="control-label" for="txt_Informacion">
                                    Información Complementaria
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <asp:TextBox ID="txt_Informacion" runat="server" TextMode="MultiLine" class="form-control limited"
                                    disabled="true" Style="resize: none;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12" style="text-align: center;">
                                <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Generar Autorización"
                                    Style="display: none;" />
                                <button id="btnConfirmar" onclick="return dialogoConfirmacion('#<%=btnGuardar.ClientID %>','¿Esta seguro de que desea generar la autorización?')"
                                    class="btn btn-primary" runat="server">
                                    Generar</button>
                                <asp:Button ID="btn_Regresar" class="btn btn-primary" runat="server" Text="Regresar"
                                    OnClick="btn_Regresar_Click" />
                            </div>
                            <asp:Panel ID="pnl_AyudaGenerar" runat="server">
                                <div class="col-sm-12" style="text-align: center;">
                                    <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Al presionar el bot&oacute;n
                                        "Generar" se generará la autorización.</span>
                                </div>
                            </asp:Panel>
                            <div class="col-sm-12" style="text-align: center; margin-top: -10px;">
                                <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Al presionar el bot&oacute;n
                                    "Regresar" retornará a la página de consulta de planes sin realizar ningún cambio.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <!-- end: PAGE HEADER -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="assets/plugins/dynatree/src/jquery.dynatree.js"></script>
    <script src="assets/js/ui-treeview.js"></script>
    <script src="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script>
        jQuery(document).ready(function () {
            UITreeview.init();
        });
        alertify.set({ labels: { ok: "Aceptar", cancel: "Cancelar"} });
        function dialogoConfirmacion(ctrl, msj) {
            alertify.confirm(msj, function (e) {
                if (e) {
                    return false;
                } else {
                    return false;
                }
            });
            return false;
        }       
    </script>
    <script type="text/javascript">

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(hideDiv());

        function showDiv() {
            document.getElementById('div_Progreso').style.display = 'block';
        }

        function hideDiv() {
            document.getElementById('div_Progreso').style.display = 'none';
        }
        
    </script>
</asp:Content>
