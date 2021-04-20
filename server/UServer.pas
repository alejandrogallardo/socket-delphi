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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
