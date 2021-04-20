object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Server'
  ClientHeight = 365
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MemoLog: TMemo
    Left = 144
    Top = 8
    Width = 185
    Height = 297
    TabOrder = 0
  end
  object BtnStart: TButton
    Left = 8
    Top = 36
    Width = 75
    Height = 25
    Caption = 'BtnStart'
    TabOrder = 1
  end
  object BtnStop: TButton
    Left = 8
    Top = 67
    Width = 75
    Height = 25
    Caption = 'BtnStop'
    TabOrder = 2
  end
  object BtnSend: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 25
    Caption = 'BtnSend'
    TabOrder = 3
  end
  object EditMsg: TEdit
    Left = 152
    Top = 322
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object EditPort: TSpinEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 1004
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    Left = 56
    Top = 96
  end
end
