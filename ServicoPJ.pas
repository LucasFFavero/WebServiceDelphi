// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://esaj.tjsp.jus.br/tjws2/services/ServicoPJ?wsdl
//  >Import : http://esaj.tjsp.jus.br/tjws2/services/ServicoPJ?wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (12/10/2022 10:04:34 - - $Rev: 103843 $)
// ************************************************************************ //

unit ServicoPJ;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : ServicoPJ
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ServicoPJHttpBinding
  // service   : ServicoPJ
  // port      : ServicoPJHttpPort
  // URL       : https://esaj.tjsp.jus.br/tjws2/services/ServicoPJ
  // ************************************************************************ //
  ServicoPJPortType = interface(IInvokable)
  ['{3DB307C8-E326-3E10-2157-AB4F814A6B34}']
    function  logon(const in0: string; const in1: string): Boolean; stdcall;
    function  SolicitaListaIntimacoesRecebidas(const in0: string): string; stdcall;
    function  confirmaLogon(const in0: string): string; stdcall;
    function  SolicitaListaCitacoesAutoConfirmada(const in0: string): string; stdcall;
    function  SolicitacaoDadosDistribuicao(const in0: string): string; stdcall;
    function  ajuizar(const in0: string; const in1: string): string; stdcall;
    function  getAssuntos(const in0: Integer; const in1: Integer): string; stdcall;
    function  getTiposDiversas: string; stdcall;
    function  getDadosProcesso(const in0: string): string; stdcall;
    function  ConsultaNumeroProcesso(const in0: string): string; stdcall;
    function  SolicitaListaIntimacoesAguardandoCiencia(const in0: string): string; stdcall;
    function  ajuizarMTOM(const in0: string; const in1: TByteSOAPArray): string; stdcall;
    function  getComarcas: string; stdcall;
    function  peticionarIntermediariaDiversaMTOM(const in0: string; const in1: TByteSOAPArray): string; stdcall;
    function  getAreasCompetenciasEClasses(const in0: Integer): string; stdcall;
    function  ConsultaPeticaoMTOM(const in0: string): TByteSOAPArray; stdcall;
    function  obterNumeroUnificadoDoProcesso(const in0: string): string; stdcall;
    function  getDistritosPoliciais: string; stdcall;
    function  SolicitaListaCitacoesAguardandoCiencia(const in0: string): string; stdcall;
    function  SolicitacaoIntimacaoAto(const in0: string; const in1: string): string; stdcall;
    function  SolicitaListaCitacoesRecebidas(const in0: string): string; stdcall;
    function  SolicitaListaIntimacaoAutoConfirmada(const in0: string): string; stdcall;
    function  SolicitaLogon(const in0: string): string; stdcall;
    function  SolicitacaoIntimacaoCiencia(const in0: string; const in1: string): string; stdcall;
    function  ConfirmacaoLeituraIntimacaoAutoConfirmado(const in0: string): string; stdcall;
    function  getMovimentacoesProcesso(const in0: string): string; stdcall;
    function  solicitacaoDocCienciaAto(const in0: string): string; stdcall;
    function  getTiposDocDigital(const in0: Integer): string; stdcall;
    function  ConfirmacaoLeituraCitacaoAutoConfirmado(const in0: string): string; stdcall;
    function  getClasseTpParte: string; stdcall;
    function  getTiposDocDelegacia: string; stdcall;
    function  obterNumeroSajDoProcesso(const in0: string): string; stdcall;
    function  SolicitacaoCitacaoCiencia(const in0: string; const in1: string): string; stdcall;
    function  SolicitacaoCitacaoAto(const in0: string; const in1: string): string; stdcall;
    function  peticionarIntermediariaMTOM(const in0: string; const in1: TByteSOAPArray): string; stdcall;
    function  SolicitacaoIntimacaoAutoConfirmada(const in0: string): string; stdcall;
    function  obterDocumentoAnexoAoAto(const in0: string): string; stdcall;
    function  SolicitacaoQtdIntimacoes(const in0: string): string; stdcall;
    function  SolicitacaoCitacaoAutoConfirmada(const in0: string): string; stdcall;
    function  getCategoriasEClasses: string; stdcall;
    function  ConsultaPeticao(const in0: string): string; stdcall;
    function  getForosEVaras: string; stdcall;
    function  getAreasCompetenciasClassesEAssuntos(const in0: Integer): string; stdcall;
    function  peticionarIntermediaria(const in0: string; const in1: string): string; stdcall;
    function  getTodosAssuntos: string; stdcall;
    function  peticionarIntermediariaDiversa(const in0: string; const in1: string): string; stdcall;
  end;

function GetServicoPJPortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServicoPJPortType;


implementation
  uses System.SysUtils;

function GetServicoPJPortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServicoPJPortType;
const
  defWSDL = 'http://esaj.tjsp.jus.br/tjws2/services/ServicoPJ?wsdl';
  defURL  = 'https://esaj.tjsp.jus.br/tjws2/services/ServicoPJ';
  defSvc  = 'ServicoPJ';
  defPrt  = 'ServicoPJHttpPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;

  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;

  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;

  try
    Result := (RIO as ServicoPJPortType);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { ServicoPJPortType }
  InvRegistry.RegisterInterface(TypeInfo(ServicoPJPortType), 'ServicoPJ', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServicoPJPortType), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServicoPJPortType), ioDocument);
  { ServicoPJPortType.logon }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'logon', '',
                                 '[ReturnName="out"]');
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'logon', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'logon', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'logon', 'out_', 'out', '');
  { ServicoPJPortType.SolicitaListaIntimacoesRecebidas }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacoesRecebidas', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacoesRecebidas', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacoesRecebidas', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.confirmaLogon }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'confirmaLogon', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'confirmaLogon', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'confirmaLogon', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitaListaCitacoesAutoConfirmada }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesAutoConfirmada', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesAutoConfirmada', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesAutoConfirmada', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoDadosDistribuicao }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoDadosDistribuicao', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoDadosDistribuicao', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoDadosDistribuicao', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ajuizar }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ajuizar', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ajuizar', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ajuizar', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ajuizar', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getAssuntos }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getAssuntos', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAssuntos', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAssuntos', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAssuntos', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getTiposDiversas }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getTiposDiversas', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getTiposDiversas', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getDadosProcesso }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getDadosProcesso', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getDadosProcesso', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getDadosProcesso', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ConsultaNumeroProcesso }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ConsultaNumeroProcesso', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConsultaNumeroProcesso', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConsultaNumeroProcesso', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitaListaIntimacoesAguardandoCiencia }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacoesAguardandoCiencia', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacoesAguardandoCiencia', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacoesAguardandoCiencia', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ajuizarMTOM }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ajuizarMTOM', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ajuizarMTOM', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ajuizarMTOM', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ajuizarMTOM', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getComarcas }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getComarcas', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getComarcas', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.peticionarIntermediariaDiversaMTOM }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversaMTOM', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversaMTOM', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversaMTOM', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversaMTOM', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getAreasCompetenciasEClasses }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getAreasCompetenciasEClasses', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAreasCompetenciasEClasses', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAreasCompetenciasEClasses', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ConsultaPeticaoMTOM }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ConsultaPeticaoMTOM', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConsultaPeticaoMTOM', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConsultaPeticaoMTOM', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.obterNumeroUnificadoDoProcesso }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'obterNumeroUnificadoDoProcesso', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'obterNumeroUnificadoDoProcesso', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'obterNumeroUnificadoDoProcesso', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getDistritosPoliciais }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getDistritosPoliciais', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getDistritosPoliciais', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitaListaCitacoesAguardandoCiencia }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesAguardandoCiencia', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesAguardandoCiencia', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesAguardandoCiencia', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoIntimacaoAto }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAto', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAto', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAto', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAto', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitaListaCitacoesRecebidas }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesRecebidas', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesRecebidas', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaCitacoesRecebidas', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitaListaIntimacaoAutoConfirmada }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacaoAutoConfirmada', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacaoAutoConfirmada', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaListaIntimacaoAutoConfirmada', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitaLogon }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitaLogon', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaLogon', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitaLogon', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoIntimacaoCiencia }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoCiencia', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoCiencia', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoCiencia', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoCiencia', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ConfirmacaoLeituraIntimacaoAutoConfirmado }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ConfirmacaoLeituraIntimacaoAutoConfirmado', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConfirmacaoLeituraIntimacaoAutoConfirmado', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConfirmacaoLeituraIntimacaoAutoConfirmado', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getMovimentacoesProcesso }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getMovimentacoesProcesso', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getMovimentacoesProcesso', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getMovimentacoesProcesso', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.solicitacaoDocCienciaAto }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'solicitacaoDocCienciaAto', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'solicitacaoDocCienciaAto', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'solicitacaoDocCienciaAto', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getTiposDocDigital }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getTiposDocDigital', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getTiposDocDigital', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getTiposDocDigital', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ConfirmacaoLeituraCitacaoAutoConfirmado }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ConfirmacaoLeituraCitacaoAutoConfirmado', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConfirmacaoLeituraCitacaoAutoConfirmado', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConfirmacaoLeituraCitacaoAutoConfirmado', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getClasseTpParte }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getClasseTpParte', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getClasseTpParte', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getTiposDocDelegacia }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getTiposDocDelegacia', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getTiposDocDelegacia', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.obterNumeroSajDoProcesso }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'obterNumeroSajDoProcesso', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'obterNumeroSajDoProcesso', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'obterNumeroSajDoProcesso', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoCitacaoCiencia }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoCiencia', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoCiencia', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoCiencia', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoCiencia', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoCitacaoAto }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAto', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAto', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAto', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAto', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.peticionarIntermediariaMTOM }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaMTOM', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaMTOM', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaMTOM', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaMTOM', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoIntimacaoAutoConfirmada }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAutoConfirmada', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAutoConfirmada', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoIntimacaoAutoConfirmada', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.obterDocumentoAnexoAoAto }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'obterDocumentoAnexoAoAto', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'obterDocumentoAnexoAoAto', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'obterDocumentoAnexoAoAto', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoQtdIntimacoes }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoQtdIntimacoes', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoQtdIntimacoes', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoQtdIntimacoes', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.SolicitacaoCitacaoAutoConfirmada }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAutoConfirmada', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAutoConfirmada', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'SolicitacaoCitacaoAutoConfirmada', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getCategoriasEClasses }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getCategoriasEClasses', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getCategoriasEClasses', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.ConsultaPeticao }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'ConsultaPeticao', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConsultaPeticao', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'ConsultaPeticao', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getForosEVaras }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getForosEVaras', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getForosEVaras', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getAreasCompetenciasClassesEAssuntos }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getAreasCompetenciasClassesEAssuntos', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAreasCompetenciasClassesEAssuntos', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getAreasCompetenciasClassesEAssuntos', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.peticionarIntermediaria }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediaria', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediaria', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediaria', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediaria', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.getTodosAssuntos }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'getTodosAssuntos', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'getTodosAssuntos', 'out_', 'out',
                                '', IS_NLBL);
  { ServicoPJPortType.peticionarIntermediariaDiversa }
  InvRegistry.RegisterMethodInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversa', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversa', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversa', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(ServicoPJPortType), 'peticionarIntermediariaDiversa', 'out_', 'out',
                                '', IS_NLBL);

end.