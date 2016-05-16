<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.Master" AutoEventWireup="true"
    CodeBehind="frmPlanesODA.aspx.cs" Inherits="RedSaludSA.FE.frmPlanesODA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link href="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/plugins/dynatree/src/skin-vista/ui.dynatree.css">
    <script type="text/javascript" src="js/bs.pagination.js"></script>
    <link rel="stylesheet" href="assets/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <script type="text/javascript">

        /*lo utilizas asi*/

        function limpiar() {
            document.getElementById("txt_Cedula").value = "";
        }

        $(document).ready(function () {



            $("#ddl_Identificacion").change(function () {
//                var value = $.trim($("#ddl_Identificacion").val());
                limpiar();
//               
            });



        });

        function SoloNumeros(_name_input_type_text, _length) {
            /// <summary>Valida que el ingreso de caracteres sea solo numeros.</summary>
            /// <param name="_name_input_type_text" type="text">es el nombre del input o caja de texto</param>
         

                var value = $.trim($("#ddl_Identificacion").val());
                if (value != "CEDULA") {
                    return true;
                }
                if (event.charCode == 8 || event.charCode == 9 || event.charCode == 20 || event.charCode == 0) {
                    return true;
                }
                else {

                    if (event.charCode >= 48 && event.charCode <= 57) {
                        if ($("#" + _name_input_type_text).val().length > parseInt(_length)) {
                            return false;
                        }
                        else
                            return true;
                    }
                    else {
                        return false;
                    }

                }


        }

       




    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- start: PAGE HEADER -->
    <div class="row">
        <div class="col-sm-12">
            <!-- start: PAGE TITLE & BREADCRUMB -->
            <%--<ol class="breadcrumb">
                <li><i class="clip-cog-2"></i><a href="#">Módulo de Beneficios </a></li>
                <li class="active">Validación de Derecho</li>
            </ol>--%>
            <div class="page-header">
                <h1>
                    Listado de Planes</h1>
            </div>
            <!-- end: PAGE TITLE & BREADCRUMB -->
        </div>
    </div>
    <form id="frm_Producto" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <div class="col-sm-6">
                    <label class="col-sm-3 control-label" for="txt_Cedula">
                        Identificación
                    </label>
                    <div class="col-sm-9">
                        <asp:TextBox  onKeyPress="return SoloNumeros(this,9);"  placeholder="Identificación" ID="txt_Cedula" ClientIDMode="Static" CssClass="form-control"
                            runat="server" />
                    </div>
                </div>
                <div class="col-sm-6">
                    <label class="col-sm-3 control-label" for="txt_Contrato">
                        Tipo de Identificación
                    </label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="ddl_Identificacion" ClientIDMode="Static" runat="server" class="form-control limited">
                        
                            <asp:ListItem   Selected="true" Text="CÉDULA" Value="CEDULA"></asp:ListItem>
                            <asp:ListItem Text="PASAPORTE" Value="PASAPORTE"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <div class="col-sm-6">
                    <label class="col-sm-3 control-label" for="txt_Lista">
                        Contrato
                    </label>
                    <div class="col-sm-9">
                        <asp:TextBox placeholder="Contrato" ID="txt_Contrato" runat="server" class="form-control limited" />
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="col-sm-3">
                    </div>
                    <div class="col-sm-9">
                        <asp:Button ID="btn_Buscar" class="col-sm-6 btn btn-primary" runat="server" Text="Buscar"
                            Style="background-color: #7859B0; border-color: #7859B0" OnClick="btn_Buscar_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div>
            <%-- <div class="col-md-12">
                <asp:Panel ID="pnl_Resultado" runat="server" Visible="false" Style="margin-top: 80px;">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="color: #FFFFFF; font-weight: bold">
                            <i class="fa fa-external-link-square"></i>Planes Individuales
                        </div>
                        <div class="panel-body" style="display: block;">
                            <div class="form-horizontal">
                                <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Aqu&iacute puede consultar
                                    los planes individuales activos del cliente.</span>
                                <asp:GridView ID="grv_Planes_Individuales" runat="server" CssClass="table table-striped table-bordered table-hover"
                                    ShowHeaderWhenEmpty="True" EmptyDataText="No existen datos a consultar." AutoGenerateColumns="False"
                                    DataKeyNames="idContrato, AdmiteODA" PagerStyle-CssClass="bs-pagination" 
                                    onrowcommand="grv_Planes_Individuales_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="idContrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AdmiteODA" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Contrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FechaExclusion" HeaderText="Fecha de Vigencia" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CodigoPlan" HeaderText="Plan" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Documento" HeaderText="Documento" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Estado" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text="ACTIVO"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text="ACTIVO"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Relacion" HeaderText="Relación" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Deducible" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("MontoDeducible").ToString() =="si"?"SI":"NO" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("MontoDeducible").ToString() =="si"?"SI":"NO"%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Falta de Pago" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                    <asp:LinkButton ID="hpl_Detalle" CssClass="btn btn-xs btn-teal tooltips" CommandArgument="<%# Container.DataItemIndex%>"
                                                        CommandName="Seleccionar" runat="server" Text="<i class='fa fa-edit'></i>" ToolTip="Seleccionar Plan"
                                                        Style="background-color: #3D44AB">
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                    <div class="btn-group">
                                                        <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#" style="background-color: #3D44AB"><i
                                                            class="fa fa-cog" style="background-color: #3D44AB; border-color:#3D44AB"></i><span class="caret"></span></a>
                                                        <ul role="menu" class="dropdown-menu pull-right">
                                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">
                                                                <asp:LinkButton runat="server" CommandArgument="<%# Container.DataItemIndex%>" CommandName="Seleccionar"
                                                                    Text="<i class='fa fa-edit'></i> Seleccionar Plan" ID="hpl_DetalleResp">
                                                                </asp:LinkButton></a>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NumericFirstLast"
                                        PageButtonCount="5" Position="Bottom" />
                                    <PagerStyle CssClass="bs-pagination"></PagerStyle>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="panel panel-default">
                        <div class="panel-heading" style="color: #FFFFFF; font-weight: bold">
                            <i class="fa fa-external-link-square"></i>Planes Corporativos
                        </div>
                        <div class="panel-body" style="display: block;">
                            <div class="form-horizontal">
                                <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Aqu&iacute puede consultar
                                    los planes corporativos activos del cliente.</span>
                                <asp:GridView ID="grv_Planes_Corporativos" runat="server" CssClass="table table-striped table-bordered table-hover"
                                    ShowHeaderWhenEmpty="True" EmptyDataText="No existen datos a consultar." AutoGenerateColumns="False"
                                    DataKeyNames="idContrato, AdmiteODA" PagerStyle-CssClass="bs-pagination" 
                                    onrowcommand="grv_Planes_Corporativos_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="idContrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AdmiteODA" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Contrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NombreEmpresa" HeaderText="Empresa" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FechaExclusion" HeaderText="Fecha de Vigencia" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CodigoPlan" HeaderText="Plan" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Documento" HeaderText="Documento" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Estado" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text="ACTIVO"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text="ACTIVO"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Relacion" HeaderText="Relación" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Deducible" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("MontoDeducible").ToString() =="si"?"SI":"NO" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("MontoDeducible").ToString() =="si"?"SI":"NO"%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Falta de Pago" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                    <asp:LinkButton ID="hpl_Detalle" CssClass="btn btn-xs btn-teal tooltips" CommandArgument="<%# Container.DataItemIndex%>"
                                                        CommandName="Seleccionar" runat="server" Text="<i class='fa fa-edit'></i>" ToolTip="Seleccionar Plan"
                                                        Style="background-color: #3D44AB">
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                    <div class="btn-group" style="background-color: #3D44AB">
                                                        <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#" style="background-color: #3D44AB; border-color:#3D44AB"><i
                                                            class="fa fa-cog" style="background-color: #3D44AB; border-color:#3D44AB"></i><span class="caret"></span></a>
                                                        <ul role="menu" class="dropdown-menu pull-right">
                                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">
                                                                <asp:LinkButton runat="server" CommandArgument="<%# Container.DataItemIndex%>" CommandName="Seleccionar"
                                                                    Text="<i class='fa fa-edit'></i> Seleccionar Plan" ID="hpl_DetalleResp">
                                                                </asp:LinkButton></a>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NumericFirstLast"
                                        PageButtonCount="5" Position="Bottom" />
                                    <PagerStyle CssClass="bs-pagination"></PagerStyle>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>

                    <br />

                     <div class="panel panel-default">
                        <div class="panel-heading" style="color: #FFFFFF; font-weight: bold">
                            <i class="fa fa-external-link-square"></i>Planes Oncológicos
                        </div>
                        <div class="panel-body" style="display: block;">
                            <div class="form-horizontal">
                                <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Aqu&iacute puede consultar
                                    los planes oncológicos activos del cliente.</span>
                                <asp:GridView ID="grv_Planes_Oncologicos" runat="server" CssClass="table table-striped table-bordered table-hover"
                                    ShowHeaderWhenEmpty="True" EmptyDataText="No existen datos a consultar." AutoGenerateColumns="False"
                                    DataKeyNames="idContrato, AdmiteODA" PagerStyle-CssClass="bs-pagination" 
                                    onrowcommand="grv_Planes_Oncologicos_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="idContrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AdmiteODA" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Contrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NombreEmpresa" HeaderText="Empresa" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FechaExclusion" HeaderText="Fecha de Vigencia" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CodigoPlan" HeaderText="Plan" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Documento" HeaderText="Documento" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Estado" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text="ACTIVO"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text="ACTIVO"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Relacion" HeaderText="Relación" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Deducible" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("MontoDeducible").ToString() =="si"?"SI":"NO" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("MontoDeducible").ToString()=="si"?"SI":"NO"%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Falta de Pago" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                    <asp:LinkButton ID="hpl_Detalle" CssClass="btn btn-xs btn-teal tooltips" CommandArgument="<%# Container.DataItemIndex%>"
                                                        CommandName="Seleccionar" runat="server" Text="<i class='fa fa-edit'></i>" ToolTip="Seleccionar Plan"
                                                        Style="background-color: #3D44AB">
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                    <div class="btn-group">
                                                        <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#" style="background-color: #3D44AB; border-color:#3D44AB"><i
                                                            class="fa fa-cog" style="background-color: #3D44AB; border-color:#3D44AB"></i><span class="caret"></span></a>
                                                        <ul role="menu" class="dropdown-menu pull-right">
                                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">
                                                                <asp:LinkButton runat="server" CommandArgument="<%# Container.DataItemIndex%>" CommandName="Seleccionar"
                                                                    Text="<i class='fa fa-edit'></i> Seleccionar Plan" ID="hpl_DetalleResp">
                                                                </asp:LinkButton></a>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NumericFirstLast"
                                        PageButtonCount="5" Position="Bottom" />
                                    <PagerStyle CssClass="bs-pagination"></PagerStyle>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                    <br />

                     <div class="panel panel-default">
                        <div class="panel-heading" style="color: #FFFFFF; font-weight: bold">
                            <i class="fa fa-external-link-square"></i>Planes Pool
                        </div>
                        <div class="panel-body" style="display: block;">
                            <div class="form-horizontal">
                                <span class="help-block"><i class="fa fa-info-circle"></i>&nbsp;Aqu&iacute puede consultar
                                    los planes pool activos del cliente.</span>
                                <asp:GridView ID="grv_Planes_Pool" runat="server" CssClass="table table-striped table-bordered table-hover"
                                    ShowHeaderWhenEmpty="True" EmptyDataText="No existen datos a consultar." AutoGenerateColumns="False"
                                    DataKeyNames="idContrato, AdmiteODA" PagerStyle-CssClass="bs-pagination" 
                                    onrowcommand="grv_Planes_Pool_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="idContrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="AdmiteODA" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            Visible="false" ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Contrato" HeaderText="Contrato" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="NombreEmpresa" HeaderText="Empresa" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="FechaExclusion" HeaderText="Fecha de Vigencia" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CodigoPlan" HeaderText="Plan" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nivel" HeaderText="Nivel" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Documento" HeaderText="Documento" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Estado" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text="ACTIVO"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text="ACTIVO"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Relacion" HeaderText="Relación" ControlStyle-CssClass="hidden-xs"
                                            ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" FooterStyle-CssClass="hidden-xs"
                                            HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ControlStyle CssClass="hidden-xs"></ControlStyle>
                                            <FooterStyle CssClass="hidden-xs"></FooterStyle>
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center"></HeaderStyle>
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Deducible" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("MontoDeducible").ToString() =="si"?"SI":"NO" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("MontoDeducible").ToString()=="si"?"SI":"NO"%>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Falta de Pago" HeaderStyle-HorizontalAlign="Center"
                                            ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Morosidad").ToString()=="no"?"NO":"SI" %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ControlStyle CssClass="hidden-xs" />
                                            <FooterStyle CssClass="hidden-xs" />
                                            <HeaderStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                            <ItemStyle CssClass="hidden-xs" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                    <asp:LinkButton ID="hpl_Detalle" CssClass="btn btn-xs btn-teal tooltips" CommandArgument="<%# Container.DataItemIndex%>"
                                                        CommandName="Seleccionar" runat="server" Text="<i class='fa fa-edit'></i>" ToolTip="Seleccionar Plan"
                                                        Style="background-color: #3D44AB">
                                                    </asp:LinkButton>
                                                </div>
                                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                    <div class="btn-group">
                                                        <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#" style="background-color: #3D44AB; border-color:#3D44AB"><i
                                                            class="fa fa-cog" style="background-color: #3D44AB; border-color:#3D44AB"></i><span class="caret"></span></a>
                                                        <ul role="menu" class="dropdown-menu pull-right">
                                                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">
                                                                <asp:LinkButton runat="server" CommandArgument="<%# Container.DataItemIndex%>" CommandName="Seleccionar"
                                                                    Text="<i class='fa fa-edit'></i> Seleccionar Plan" ID="hpl_DetalleResp">
                                                                </asp:LinkButton></a>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NumericFirstLast"
                                        PageButtonCount="5" Position="Bottom" />
                                    <PagerStyle CssClass="bs-pagination"></PagerStyle>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>--%>
        </div>
        <div class="col-md-12" style="text-align: center;">
        </div>
        <div class="col-md-12" style="text-align: center;">
            <label>
                <br />
                <br />
            </label>
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
        function dialogoConfirmacionEliminar(ctrl, msj) {
            alertify.confirm(msj, function (e) {
                if (e) {
                    jQuery.globalEval(ctrl);
                } else {
                    return false;
                }
            });
            return false;
        }       
    </script>
</asp:Content>
