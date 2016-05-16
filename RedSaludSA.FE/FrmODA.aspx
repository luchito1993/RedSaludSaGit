<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmODA.aspx.cs" Inherits="RedSaludSA.FE.FrmODA" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            height: 23px;
            text-align: center;
        }
        .style54
        {
            height: 17px;
            width: 96px;
            font-size: small;
        }
        .style55
        {
            font-size: small;
            text-align: center;
        }
        .style56
        {
            height: 17px;
            width: 232px;
        }
        .style72
        {
            width: 3676px;
            height: 16px;
        }
        .style73
        {
            width: 3676px;
            text-align: center;
            font-size: small;
            font-weight: bold;
            height: 17px;
            background-color: #FD4F57;
        }
        .style74
        {
            text-align: right;
        }
        .style76
        {
            width: 54px;
            font-size: small;
            font-weight: bold;
            text-align: center;
            height: 17px;
            background-color: #FD4F57;
        }
        .style77
        {
            width: 103px;
            font-size: small;
            font-weight: bold;
            text-align: center;
            height: 17px;
            background-color: #FD4F57;
        }
        .style78
        {
            text-align: center;
            font-size: small;
            font-weight: bold;
            height: 16px;
        }
        .style79
        {
            width: 67px;
            font-size: small;
            text-align: center;
            font-weight: bold;
            background-color: #FD4F57;
        }
        .style81
        {
            text-align: center;
            font-size: small;
            width: 637px;
            font-weight: bold;
            height: 17px;
            background-color: #FD4F57;
        }
                        
        table.tabla_sin {

  border-collapse:collapse;

  border: none;

}

td.celda_sin {

  padding: 0;

}
        .style96
        {
            text-align: left;
            background-color: #4FC8ED;
        }
        .style97
        {
            text-align: center;
            height: 16px;
        }
        .style99
        {
            text-align: right;
            font-size: small;
            height: 15px;
        }
        .style100
        {
            text-align: left;
            font-size: x-small;
            font-weight: bold;
            height: 9px;
            background-color: #4FC8ED;
        }
        .style101
        {
            font-size: x-small;
        }
        .style107
        {
            text-align: right;
            height: 16px;
            width: 103px;
        }
        .style108
        {
            width: 67px;
            text-align: right;
            height: 16px;
        }
        .style111
        {
            text-align: left;
            font-size: x-small;
            font-weight: bold;
            height: 15px;
        }
        .style112
        {
            text-align: left;
            font-size: x-small;
            font-weight: bold;
            height: 12px;
        }
        .style113
        {
            text-align: right;
            height: 12px;
            width: 103px;
        }
        .style114
        {
            width: 67px;
            text-align: right;
            height: 12px;
        }
        .style117
        {
            text-align: right;
            height: 9px;
            width: 103px;
        }
        .style118
        {
            width: 67px;
            text-align: right;
            height: 9px;
        }
        .style148
        {
            font-size: medium;
            text-align: center;
        }
        .style149
        {
            width: 152px;
            height: 44px;
        }
        .style150
        {
            text-align: center;
            font-size: small;
            font-weight: bold;
            height: 16px;
            background-color: #FD4F57;
        }
        .style208
        {
            height: 17px;
            width: 235px;
        }
        .style261
        {
            height: 17px;
            width: 89px;
            font-size: small;
        }
        .style277
        {
            width: 54px;
            text-align: right;
            height: 16px;
        }
        .style278
        {
            width: 54px;
            text-align: right;
            height: 12px;
        }
        .style279
        {
            width: 54px;
            text-align: right;
            height: 9px;
        }
        .style280
        {
            width: 39px;
            font-size: small;
            text-align: right;
            font-weight: bold;
            background-color: #FD4F57;
        }
        .style281
        {
            width: 39px;
            text-align: right;
            height: 16px;
        }
        .style282
        {
            width: 39px;
            text-align: right;
            height: 12px;
        }
        .style283
        {
            width: 39px;
            text-align: right;
            height: 9px;
        }
        .style284
        {
            width: 197px;
            height: 8px;
        }
        .style285
        {
            width: 80px;
            font-size: small;
            height: 8px;
        }
        .style287
        {
            width: 60px;
            font-size: small;
            height: 8px;
        }
        .style288
        {
            height: 8px;
            width: 67px;
        }
        .style291
        {
            height: 17px;
            width: 76px;
            font-size: small;
        }
        .style296
        {
            height: 15px;
            width: 208px;
        }
        .style301
        {
            width: 34px;
            font-size: small;
            font-weight: 700;
        }
        .style311
        {
            width: 209px;
        }
        .style315
        {
            height: 15px;
            width: 32px;
            font-size: small;
        }
        .style316
        {
            height: 8px;
            width: 63px;
        }
        .style317
        {
            font-size: small;
            background-color: #4FC8ED;
        }
        .style318
        {
            font-size: small;
            text-align: center;
            background-color: #4FC8ED;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 752px; height: 549px;"   class="centered"   >

    <div>
    
        <table style="width:747px; height: 57px; margin-top: 24px;">
            <tr>
                <td class="style3">
                    <strong><span class="style148">
                    <img alt="" class="style149" src="img/logo-inicio.png" /><br />
                    ORDEN  DE ATENCION </span> 
                    <asp:Label ID="lbl_tipo_plan" runat="server" Text="" CssClass="style148"></asp:Label>
                        
                    <span class="style148">&nbsp;/ PRESTADOR&nbsp;&nbsp;&nbsp; 
                    <br />
                    </span></strong></td>
            </tr>

        </table  >
        <table style="width: 752px; border:1px solid black; height: 26px;"
            class="tabla_sin">

            <tr>
                <td class="style261">
                    <strong>N° de orden&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                <td class="style208" style="border-right: 1px groove #100101;">
                    <asp:Label ID="lbl_orden" runat="server" Text="Label" CssClass="style55"></asp:Label>
                    </td>
                <td class="style54">
                    <strong>Fecha de consulta
                    </strong>
                    </td>
                     <td class="style56">
                         <asp:Label ID="lbl_fecha_consulta" runat="server" Text="Label" 
                             CssClass="style55"></asp:Label>
                    </td>
             
            </tr>
             <tr>
                <td class="style261" >
                    <strong style="font-size: small">Empresa&nbsp;&nbsp;&nbsp;&nbsp;          
                 <td class="style208" style="border-right: 1px groove #100101;">
                    <asp:Label ID="lbl_empresa" runat="server" Text="Label" CssClass="style55"></asp:Label>
                    </td>
                <td class="style54">
                    &nbsp;<strong>N lista</strong></td>
                     <td class="style56">
                         <asp:Label ID="lbl_lista" runat="server" Text="Label" CssClass="style55"></asp:Label>
                    </td>
             
            </tr>




        </table>
    
   
    </div>

    <div style="width: 749px; height: 18px;">  

    </div>

    <div>
    
     <table  style="width: 751px; border:1px solid black;"class="tabla_sin"" >
    
    <tr>
    <td class="style291">
    
        <span 
            class="style55"><strong>Beneficiario</strong>&nbsp;</span></td>
    <td class="style284" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_titular" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style285">
    
        <strong><span class="style55">N° Contrato</span></strong><span class="style55">&nbsp; </span></td>
    <td class="style316" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_contrato" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style287">
    
        <strong>Plan </strong></td>
    <td class="style288">
    
        <asp:Label ID="lbl_plan" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td class="style291">
    
        <span class="style55"><strong>Vigencia&nbsp;</strong></span></td>
    <td class="style284" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_beneficiario" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style285">
    
        <strong><span class="style55">Parentesco&nbsp;</span></strong><span 
            class="style55">&nbsp;&nbsp; </span></td>
    <td class="style316" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_parentesco" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style287">
    
        <strong>Edad </strong></td>
    <td class="style288">
    
        <asp:Label ID="lbl_edad" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    </tr>

       <tr>
    <td class="style291">
    
        <span style="text-align: left"><strong>Titular</strong></span></td>
    <td class="style284" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_vigencia" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style285">
    
        <strong><span class="style55">Cédula&nbsp;&nbsp;</span></strong><span 
            class="style55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </span></td>
    <td class="style316" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_cedula" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style287">
    
        <strong>Inclusión</strong></td>
    <td class="style288">
    
        <asp:Label ID="lbl_inclusion" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    </tr>
    </table>
    </div>

    <div style="width: 750px; height: 32px">
    
    
        <strong>
        <br class="style55" />
        <span class="style55">PRESTADOR</span></strong><br />
    
    
    </div>
    <div>
     <table  style="width: 751px; border:1px solid black; height: 12px;"
            class="tabla_sin" >
    
    <tr>
    <td class="style315" >
    
        <strong>Nombre</strong></td>
    <td class="style311"    style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_nombre" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style301">
    
        Cedula/Ruc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td class="style296"  style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_ruc" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    </tr>
    <tr>
    <td class="style315">
    
        <strong>Especialidades</strong></td>
    <td style="border-right: 1px groove #100101;" class="style311">
    
        <asp:Label ID="lbl_especialidades" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    <td class="style301">
    
        Nivel<strong><span class="style55">&nbsp;</span></strong><span 
            class="style55">&nbsp;&nbsp;</span></td>
    <td class="style296" style="border-right: 1px groove #100101;">
    
        <asp:Label ID="lbl_nivel" runat="server" Text="Label" CssClass="style55"></asp:Label>
    
    </td>
    </tr>

    
    </table>
    
        <span class="style55">
    
    <td colspan="6"></span><strong><span class="style55">Estimado Doctor(a), esta ODA tiene una duracion de 20 días para ser cobrada 
        .ías para ser cobrada 
        .&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></div>

<div style="height: 48px; width: 751px; text-align: center">


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;<br />
&nbsp;DETALLES DE LA ORDEN DE ATENCION
    <br />
    <br />
    <br />
    </strong>


</div>

<table style="width: 748px; "  class="tabla_sin">
<tr>
<td class="style150" colspan="2"style="border:1px solid black;">&nbsp; PRESTACION&nbsp;</td>
    <td class="style280" rowspan="2"style="border:1px solid black;">
    Valor presentado</td><td class="style79" rowspan="2"style="border:1px solid black;">Cantidad</td>
    <td class="style78" colspan="2"style="border:1px solid black;">VALORES LIQUIDADOS</td>
</tr>
<tr>
<td class="style81"style="border:1px solid black;">Código</td><td class="style73"style="border:1px solid black;">DESCRIPCION </td>
    <td class="style77"style="border:1px solid black;">Copago</td><td class="style76"style="border:1px solid black;">
    Bonificado</td>
</tr>
<tr>
<td class="style97"style="border:1px solid black;">
    
        <asp:Label ID="lbl_codigo" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style72"style="border:1px solid black;">
    
        <asp:Label ID="lbl_descripcion" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style281"style="border:1px solid black;">
    
        <asp:Label ID="lbl_valor_presentado" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style108"style="border:1px solid black;">
    
        <asp:Label ID="lbl_cantidad" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style107"style="border:1px solid black;">
    
        <asp:Label ID="lbl_copago" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style277"style="border:1px solid black;">
    
        <asp:Label ID="lbl_bonificado" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td>
</tr>
<tr>
<td class="style74"style="border:0px solid black;" colspan="6">
    
        &nbsp;</td>
</tr>
<tr>
<td class="style112"style="border:1px solid black;" colspan="2">
    
        SUBTOTAL</td><td class="style282"style="border:1px solid black;">
    
        <asp:Label ID="lbl_subtotal" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style114"style="border:1px solid black;">
    
        </td><td class="style113"style="border:1px solid black;">
    
        <asp:Label ID="lbl_subt_copago" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style278"style="border:1px solid black;">
    
        <asp:Label ID="lbl_subt_bonificado" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td>
</tr>
<tr>
<td class="style111"style="border:1px solid black;" colspan="2">
    
        COPAGO SERVICIO</td><td class="style99"style="border:1px solid black;" 
        colspan="4">
    
        <asp:Label ID="lbl_serv_copago" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td>
</tr>
<tr>
<td class="style100"style="border:1px solid black; " 
        colspan="2">
    
        TOTAL</td><td class="style283"style="border:1px solid black;">
    
        <asp:Label ID="lbl_total" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style118"style="border:1px solid black;">
    
        </td>
    <td class="style117"
        style="border:1px solid black; background-color: #4FC8ED;">
    
        <asp:Label ID="lbl_tot_copago" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td><td class="style279"style="border:1px solid black;">
    
        <asp:Label ID="lbl_tot_bonificado" runat="server" Text="Label" 
            CssClass="style55"></asp:Label>
    
        </td>
</tr>
<tr>
<td class="style96"style="border:1px solid black;" 
        colspan="6">
    
        <strong><span class="style317">Estimado Cliente :</span><br class="style317" />
        <span class="style317">Sirvase a cancelar de su médico la cantidad de </span>
        <span class="style101">
    
        <asp:Label ID="Label22" runat="server" Text="Label" 
            CssClass="style318"></asp:Label>
    
        </span><span class="style317">&nbsp;dólares correspondiente a su participación 
        en esta atención.</span></strong></td>
</tr>
</table >


<div style="height: 12px; width: 746px">

</div>
        </div>
    </form>
</body>
</html>
