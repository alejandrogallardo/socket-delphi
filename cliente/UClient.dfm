object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 257
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnStart: TButton
    Left = 24
    Top = 63
    Width = 75
    Height = 25
    Caption = 'BtnStart'
    TabOrder = 0
  end
  object BtnStop: TButton
    Left = 24
    Top = 94
    Width = 75
    Height = 25
    Caption = 'BtnStop'
    TabOrder = 1
  end
  object BtnSend: TButton
    Left = 24
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BtnSend'
    TabOrder = 2
  end
  object MemoLog: TMemo
    Left = 135
    Top = 8
    Width = 185
    Height = 204
    TabOrder = 3
  end
  object EditMsg: TEdit
    Left = 135
    Top = 218
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object EditHost: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '127.0.0.1'
  end
  object EditPort: TSpinEdit
    Left = 8
    Top = 35
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 1004
  end
end
