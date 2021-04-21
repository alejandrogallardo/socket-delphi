unit UClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  System.Win.ScktComp;

type
  TForm2 = class(TForm)
    BtnStart: TButton;
    BtnStop: TButton;
    BtnSend: TButton;
    MemoLog: TMemo;
    EditMsg: TEdit;
    EditHost: TEdit;
    EditPort: TSpinEdit;
    ClientSocket1: TClientSocket;
    procedure BtnStartClick(Sender: TObject);
    procedure BtnStopClick(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure BtnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnSendClick(Sender: TObject);
begin
  ClientSocket1.Socket.SendText(EditMsg.Text);
end;

procedure TForm2.BtnStartClick(Sender: TObject);
begin
  ClientSocket1.Host := EditHost.Text;
  ClientSocket1.Port := EditPort.Value;
  ClientSocket1.Active := True;
end;

procedure TForm2.BtnStopClick(Sender: TObject);
begin
  ClientSocket1.Active := False;
end;

procedure TForm2.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add('Conected');
end;

procedure TForm2.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add('Disconected');
end;

procedure TForm2.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add(ClientSocket1.Socket.ReceiveText);
end;

end.
