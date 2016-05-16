<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RedSaludSA.FE.Account.Login" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Redsaludsa.com</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/style.css">
    <link rel="stylesheet" href="../assets/css/main.css">
    <link rel="stylesheet" href="../assets/css/main-responsive.css">
    <link rel="stylesheet" href="../assets/plugins/iCheck/skins/all.css">
    <link rel="stylesheet" href="../assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
    <link rel="stylesheet" href="../assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
    <link rel="stylesheet" href="../assets/css/theme_light.css" type="text/css" id="skin_color">
    <link rel="stylesheet" href="../assets/css/print.css" type="text/css" media="print" />
    <link rel="stylesheet" href="../js/alertify/themes/alertify.core.css" />
    <link rel="stylesheet" href="../js/alertify/themes/alertify.default.css" />
    <link rel="stylesheet" href="../css/salud.css">
    <script src="../js/vendor/jquery.js"></script>
    <script type="text/javascript" src="../js/alertify/alertify.min.js"></script>
</head>
<body class="login example2">
    <div class="main-login col-sm-4 col-sm-offset-4">
        <div class="logo">
            REDSALUDSA
        </div>
        <!-- start: LOGIN BOX -->
        <div class="box-login">
            <p>
                Por favor ingrese usuario y contraseña .
            </p>
            <form class="form-login" runat="server">
            <fieldset>
                <div class="form-group">
                    <span class="input-icon">
                        <input type="text" class="form-control" required tabindex="1" name="username" runat="server"
                            id="txtUsuario" placeholder="Usuario">
                        <i class="fa fa-user"></i></span>
                </div>
                <div class="form-group form-actions">
                    <span class="input-icon">
                        <input type="password" class="form-control password" required tabindex="2" runat="server"
                            name="password" id="txtPassword" placeholder="Contraseña">
                        <i class="fa fa-lock"></i></span>
                </div>
                <div class="form-actions">
                    <asp:LinkButton runat="server" ID="lkbIngresar" Text="Ingresar <i class='fa fa-arrow-circle-right'></i>" CssClass="btn btn-bricky pull-right"
                        TabIndex="3" OnClick="lkbIngresar_Click"></asp:LinkButton>
                </div>
            </fieldset>
            </form>
        </div>
        <!-- end: LOGIN BOX -->
        
        
        <!-- start: COPYRIGHT -->
        <div class="copyright">
            2016 &copy; Desarrollado por Sinergiass
        </div>
        <!-- end: COPYRIGHT -->
    </div>
    <!-- start: MAIN JAVASCRIPTS -->
    <!--[if lt IE 9]>
		<script src="assets/plugins/respond.min.js"></script>
		<script src="assets/plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="assets/plugins/jQuery-lib/1.10.2/jquery.min.js"></script>
		<![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="../assets/plugins/jQuery-lib/2.0.3/jquery.min.js"></script>
    <!--<![endif]-->
    <script src="../assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="../assets/plugins/blockUI/jquery.blockUI.js"></script>
    <script src="../assets/plugins/iCheck/jquery.icheck.min.js"></script>
    <script src="../assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
    <script src="../assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
    <script src="../assets/plugins/less/less-1.5.0.min.js"></script>
    <script src="../assets/plugins/jquery-cookie/jquery.cookie.js"></script>
    <script src="../assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
    <script src="../assets/js/main.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="../assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="../assets/js/login.js"></script>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script>
        jQuery(document).ready(function () {
            Main.init();
            Login.init();
        });
    </script>
</body>
</html>
