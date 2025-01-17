unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MongoDB, FireDAC.Phys.MongoDBDef,
  FireDAC.VCLUI.Wait, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, System.Rtti,
  System.JSON.Types, System.JSON.Readers, System.JSON.BSON,
  System.JSON.Builders, FireDAC.Phys.MongoDBWrapper; // Incluindo a biblioteca Midas

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysMongoDriverLink1: TFDPhysMongoDriverLink;
    pnlInfo: TPanel;
    btnConexao: TButton;
    procedure FormClick(Sender: TObject);
    procedure btnConexaoClick(Sender: TObject);
  private
    procedure ConnectToDatabase; // Declara��o do m�todo de conex�o
    procedure DisconnectFromDatabase; // Declara��o do m�todo de desconex�o
  public
     // M�todo para gerenciar a conex�o
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// Conecta ao MongoDB
procedure TForm1.ConnectToDatabase;
begin
  try
    FDConnection1.Connected := True; // Tente conectar
    pnlInfo.Caption := 'Conex�o efetuada com sucesso';
    btnConexao.Caption := 'Desconectar';
  except
    on e: Exception do // Captura exce��es para falha de conex�o
      pnlInfo.Caption := 'Erro ao conectar ao banco de dados' + sLineBreak + e.Message;
  end;
end;

// Desconecta do MongoDB
procedure TForm1.DisconnectFromDatabase;
begin
  FDConnection1.Connected := False; // Desconecta
  btnConexao.Caption := 'Conectar';
  pnlInfo.Caption := 'Desconectado do MongoDB';
end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

// M�todo para gerenciar o clique do bot�o de conex�o
procedure TForm1.btnConexaoClick(Sender: TObject);
begin
  if FDConnection1.Connected then
    DisconnectFromDatabase // Se j� estiver conectado, desconecta
  else
    ConnectToDatabase; // Caso contr�rio, conecta
end;

end.
