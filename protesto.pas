// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www.protesto.com.br/cra/webservice/protesto.php?wsdl
//  >Import : http://www.protesto.com.br/cra/webservice/protesto.php?wsdl>0
// Encoding : ISO-8859-1
// Version  : 1.0
// (12/10/2022 10:06:06 - - $Rev: 103843 $)
// ************************************************************************ //

unit protesto;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Name      : server.RemessaPortType
  // Namespace : http://www.protesto.com.br/cra/webservice/protesto.php
  // soapAction: http://www.protesto.com.br#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : server.RemessaBinding
  // service   : server.Remessa
  // port      : server.RemessaPort
  // URL       : https://www.protesto.com.br:443/cra/webservice/protesto.php?debug=1
  // ************************************************************************ //
  server_RemessaPortType = interface(IInvokable)
  ['{062DA30A-8828-18C4-B9F2-813B00614064}']
    function  Remessa(const user_arq: string; const user_dados: string): string; stdcall;
    function  Desistencia(const user_arq: string; const user_dados: string): string; stdcall;
    function  Cancelamento(const user_arq: string; const user_dados: string): string; stdcall;
    function  Retirada_Condicional(const user_arq: string; const user_dados: string): string; stdcall;
    function  Confirmacao(const user_arq: string): string; stdcall;
    function  Confirmacao_Resgate(const user_arq: string): string; stdcall;
    function  Retorno_Resgate(const user_arq: string): string; stdcall;
    function  Retorno(const user_arq: string): string; stdcall;
    function  Homologadas(const codapres: string): string; stdcall;
    function  Feriados(const ano4: string): string; stdcall;
  end;

function Getserver_RemessaPortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): server_RemessaPortType;


implementation
  uses System.SysUtils;

function Getserver_RemessaPortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): server_RemessaPortType;
const
  defWSDL = 'http://www.protesto.com.br/cra/webservice/protesto.php?wsdl';
  defURL  = 'https://www.protesto.com.br:443/cra/webservice/protesto.php?debug=1';
  defSvc  = 'server.Remessa';
  defPrt  = 'server.RemessaPort';
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
    Result := (RIO as server_RemessaPortType);
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
  { server.RemessaPortType }
  InvRegistry.RegisterInterface(TypeInfo(server_RemessaPortType), 'http://www.protesto.com.br/cra/webservice/protesto.php', 'ISO-8859-1', '', 'server.RemessaPortType');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(server_RemessaPortType), 'http://www.protesto.com.br#%operationName%');

end.