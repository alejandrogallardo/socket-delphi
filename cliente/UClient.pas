unit UClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    BtnStart: TButton;
    BtnStop: TButton;
    BtnSend: TButton;
    MemoLog: TMemo;
    EditMsg: TEdit;
    EditHost: TEdit;
    EditPort: TSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
