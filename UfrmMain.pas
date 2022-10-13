unit UfrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btnLogon: TButton;
    MemoDesafio: TMemo;
    procedure btnLogonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ServicoPJ;

function GeraSolicitaLogonXml(Service, Version, Descricao, Code, FromAddress,
  ToAddress, Data: string): string;
begin
  Result := '<?xml version="1.0" encoding="ISO-8859-1"?>' + #13;
  Result := Result + '<Message>' + #13;
  Result := Result + #9'<MessageId>' + #13;
  Result := Result + #9#9'<ServiceId>' + Service + '</ServiceId>' + #13;
  Result := Result + #9#9'<Version>' + Version + '</Version>' + #13;
  Result := Result + #9#9'<MsgDesc>' + Descricao + '</MsgDesc>' + #13;
  Result := Result + #9#9'<Code>' + Code + '</Code>' + #13;
  Result := Result + #9#9'<FromAddress>' + FromAddress + '</FromAddress>' + #13;
  Result := Result + #9#9'<ToAddress>' { ToAddress } + 'Tribunal de Justica de Sao Paulo' + '</ToAddress>' + #13;
  Result := Result + #9#9'<Date>' + Data + '</Date>' + #13;
  Result := Result + #9'</MessageId>' + #13;
  Result := Result + #9'<MessageBody/>' + #13;
  Result := Result + '</Message>';
end;

function GeraConfirmaLogonXml(Service, Version, Descricao, Code, FromAddress, ToAddress, Data, Desafio: string): string;
begin
  Result := '<?xml version="1.0" encoding="ISO-8859-1"?>' + #13;
  Result := Result + '<Message>' + #13;
  Result := Result + #9'<MessageId>' + #13;
  Result := Result + #9#9'<ServiceId>' + Service + '</ServiceId>' + #13;
  Result := Result + #9#9'<Version>' + Version + '</Version>' + #13;
  Result := Result + #9#9'<MsgDesc>' + Descricao + '</MsgDesc>' + #13;
  Result := Result + #9#9'<Code>' + Code + '</Code>' + #13;
  Result := Result + #9#9'<FromAddress>' + FromAddress + '</FromAddress>' + #13;
  Result := Result + #9#9'<ToAddress>' { ToAddress } + 'Tribunal de Justica de Sao Paulo' + '</ToAddress>' + #13;
  Result := Result + #9#9'<Date>' + Data + '</Date>' + #13;
  Result := Result + #9'</MessageId>' + #13;
  Result := Result + #9'<MessageBody>' + #13;
  Result := Result + #9#9'<DesafioAssinado>' + Desafio + '</DesafioAssinado>' + #13;
  Result := Result + #9'</MessageBody>' + #13;
  Result := Result + '</Message>' + #13;
end;


procedure ApagaPasta(Pasta: string);
var
  Arquivo: TSearchRec;
begin
  try
    if (Pasta <> '') then
    begin
      if FindFirst(Pasta + '*.*', 0, Arquivo) = 0 then
      begin
        repeat
          DeleteFile(Pasta + Arquivo.Name);
        until FindNext(Arquivo) <> 0;
        FindClose(Arquivo);
      end;
      DeleteFile(Pasta);
      RemoveDirectory(PChar(Pasta));
    end;
  except
    Showmessage('Erro ao excluir arquivos de Assinatura Xml.');
    exit;
  end;
end;

function ExtractText(aText, OpenTag, CloseTag: string): string;
{ Retorna o texto dentro de 2 tags (open & close Tag's) }
var
  iAux, kAux: Integer;
begin
  Result := '';

  if (Pos(CloseTag, aText) <> 0) and (Pos(OpenTag, aText) <> 0) then
  begin
    iAux := Pos(OpenTag, aText) + Length(OpenTag);
    kAux := Pos(CloseTag, aText);
    Result := Copy(aText, iAux, kAux - iAux);
  end;
end;

procedure TfrmMain.btnLogonClick(Sender: TObject);
var
  CodigoRetorno, MsgRetorno, Desafio, Arq, Programa, sCamArqRaiz: string;
  SolicitaLogon, ConfirmaLogon: TStringList;
  AssinadorXml, AssinadorDesafio: Boolean;
  Resposta, DesafioAssinado: string;
  ContaLista, i: Integer;
  Win: THandle;
begin
  try
    ApagaPasta(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon\');
    ApagaPasta(ExtractFilePath(paramstr(0)) + 'AssinaturaDesafio\Logon\');

    sCamArqRaiz := ExtractFilePath(paramstr(0)) + '\AssinaturaXml\Logon.xml';
    if FileExists(sCamArqRaiz) then
      DeleteFile(sCamArqRaiz);

    sCamArqRaiz := ExtractFilePath(paramstr(0)) + '\AssinaturaDesafio\Logon.xml';
    if FileExists(sCamArqRaiz) then
      DeleteFile(sCamArqRaiz);

    if not Assigned(SolicitaLogon) then
      SolicitaLogon := TStringList.Create;

    SolicitaLogon.Text := GeraSolicitaLogonXml('SolicitaLogon', '1.0', 'Solicitacao do Desafio de Logon', '2022000001', 'Admin',
      'Admin', FormatDateTime('yyyy-mm-dd', Date));

    // Assinar xml de Solicitação de Logon
    if not DirectoryExists(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon') then
      ForceDirectories(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon');
    SolicitaLogon.SaveToFile(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon\SolicitaLogon.xml');

    // Necessário implementar a assinatura do xml de Logon

    SolicitaLogon.Clear;
    SolicitaLogon.LoadFromFile(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon\SolicitaLogon.xml');

    // Chama função do Web Service
    Resposta := GetServicoPJPortType.SolicitaLogon(SolicitaLogon.Text);
    FormatSettings.DecimalSeparator := ',';

    CodigoRetorno := '';
    MsgRetorno := '';
    if Pos('<Codigo>', Resposta) <> 0 then
    begin
      CodigoRetorno := ExtractText(Resposta, '<Codigo>', '</Codigo>');
      MsgRetorno := ExtractText(Resposta, '<Descricao>', '</Descricao>');
    end;

    if (CodigoRetorno = '0') then
    begin
      Desafio := Copy(Resposta, Pos('<Desafio>', Resposta) + 9, Pos('</Desafio>', Resposta) - (Pos('<Desafio>', Resposta) + 9));
      MemoDesafio.Clear;
      MemoDesafio.Text := Desafio;

      if not DirectoryExists(ExtractFilePath(paramstr(0)) + 'AssinaturaDesafio\Logon') then
        ForceDirectories(ExtractFilePath(paramstr(0)) + 'AssinaturaDesafio\Logon');
      MemoDesafio.Lines.SaveToFile(ExtractFilePath(paramstr(0)) + 'AssinaturaDesafio\Logon\Desafio.txt');

      //Necessário implementar a assinatura do Desafio de Logon
      DesafioAssinado :=  MemoDesafio.Text;

      if not Assigned(ConfirmaLogon) then
        ConfirmaLogon := TStringList.Create;

      ConfirmaLogon.Text := GeraConfirmaLogonXml('ConfirmaLogon', '1.0', 'Confirmacao do Desafio de Login', '202200001', 'Admin',
        'Admin', FormatDateTime('yyyy-mm-dd', Date), DesafioAssinado);

      // Assinar xml de Confirmação de Logon
      if not DirectoryExists(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon') then
        ForceDirectories(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon');
      ConfirmaLogon.SaveToFile(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon\ConfirmaLogon.xml');

      // Necessário implementar a assinatura do xml de Confirmação de Logon
      ConfirmaLogon.Clear;
      ConfirmaLogon.LoadFromFile(ExtractFilePath(paramstr(0)) + 'AssinaturaXml\Logon\ConfirmaLogon.xml');

      // Chama função do Web Service
      Resposta := GetServicoPJPortType.ConfirmaLogon(ConfirmaLogon.Text);
      FormatSettings.DecimalSeparator := ',';

      CodigoRetorno := '';
      MsgRetorno := '';
      if Pos('<Codigo>', Resposta) <> 0 then
      begin
        CodigoRetorno := ExtractText(Resposta, '<Codigo>', '</Codigo>');
        MsgRetorno := ExtractText(Resposta, '<Descricao>', '</Descricao>');
      end;

      if (CodigoRetorno = '0') then
       Showmessage('Logon efetuado com sucesso.')
      else
        raise Exception.Create('Código: ' + CodigoRetorno + ' ' + 'Descrição: ' + MsgRetorno);
    end
    else
      raise Exception.Create('Código: ' + CodigoRetorno + ' ' + 'Descrição: ' + MsgRetorno);

    freeAndNil(ConfirmaLogon);
    freeAndNil(SolicitaLogon);
  except
    on E: Exception do
    begin
        Showmessage('Erro ao efetuar logon.');

      if Assigned(ConfirmaLogon) then
        freeAndNil(ConfirmaLogon);
      if Assigned(SolicitaLogon) then
        freeAndNil(SolicitaLogon);
      exit;
    end;
  end;
end;


end.
