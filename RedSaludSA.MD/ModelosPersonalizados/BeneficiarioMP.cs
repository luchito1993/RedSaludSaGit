using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RedSaludSA.MD.ModelosPersonalizados
{
    public class BeneficiarioMP
    {
        public int Identificador { get; set; }
        public string TipoDocumento { get; set; }
        public string Cedula { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string NumeroContrato { get; set; }
        public string NumeroPersona { get; set; }
        public string Region { get; set; }
        public string CodigoProducto { get; set; }
        public string Estado { get; set; }
        public string Comisiona { get; set; }
        public string Observaciones { get; set; }
        public string Nivel { get; set; }
        public string FechaInicio { get; set; }
        public string Preexistencias { get; set; }
        public string NumeroEmpresa { get; set; }
        public string NombreEmpresa { get; set; }
        public string NumeroSucursal { get; set; }
        public string CodigoPlan { get; set; }
        public string VersionPlan { get; set; }
        public string Titular { get; set; }
        public string Mora { get; set; }
        public string Carencia { get; set; }
        public string Sexo { get; set; }
        public string EstadoCivil { get; set; }
        public string FechaNacimiento { get; set; }
        public string Parentesco { get; set; }
        public string DiasCarencia { get; set; }
        public string Maternidad { get; set; }
        public string AutorizacionesMedicas { get; set; }
        public string NumeroAutorizacion { get; set; }
        public string NumeroProcedimiento { get; set; }
        public int Edad { get; set; }
        public string TieneDeducible { get; set; }
        public string CodigoDiagnostico { get; set; }
        public string Fobservaciones { get; set; }
        public DateTime FechaInicioD { get; set; }
        public DateTime FechaNacimientoD { get; set; }
        public string MontoDeduciblePlan { get; set; }
        public string MontoPresentado { get; set; }
        public string OdasAsignadas { get; set; }
        public string OdasUsadas { get; set; }
        public string ListaBloqueada { get; set; }
        public string FechaFinContrato { get; set; }
        public DateTime FechaFinContratoD { get; set; }

    }
}
