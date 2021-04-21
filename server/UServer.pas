unit UServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, System.Win.ScktComp,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MemoLog: TMemo;
    BtnStart: TButton;
    BtnStop: TButton;
    BtnSend: TButton;
    EditMsg: TEdit;
    ServerSocket1: TServerSocket;
    EditPort: TSpinEdit;
    procedure BtnStartClick(Sender: TObject);
    procedure BtnStopClick(Sender: TObject);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure BtnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnSendClick(Sender: TObject);
begin
  if ServerSocket1.Socket.ActiveConnections > 0 then
    ServerSocket1.Socket.Connections[0].SendText(EditMsg.Text);
end;

procedure TForm1.BtnStartClick(Sender: TObject);
begin
  ServerSocket1.Port := EditPort.Value;
  ServerSocket1.Active := True;
  MemoLog.Lines.Add('Server Start');
end;

procedure TForm1.BtnStopClick(Sender: TObject);
begin
  ServerSocket1.Active := False;
  MemoLog.Lines.Add('Server Stop');
end;

procedure TForm1.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add('Cliente conectado');
  MemoLog.Lines.Add(Socket.RemoteAddress + ' : ' + IntToStr(Socket.RemotePort));
end;

procedure TForm1.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add('Cliente desconectado');
  MemoLog.Lines.Add(Socket.RemoteAddress + ' : ' + IntToStr(Socket.RemotePort));
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add(ServerSocket1.Socket.Connections[0].ReceiveText);
end;

end.
