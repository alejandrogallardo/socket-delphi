object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 379
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
    Left = 8
    Top = 63
    Width = 121
    Height = 25
    Caption = 'BtnStart'
    TabOrder = 0
    OnClick = BtnStartClick
  end
  object BtnStop: TButton
    Left = 8
    Top = 94
    Width = 121
    Height = 25
    Caption = 'BtnStop'
    TabOrder = 1
    OnClick = BtnStopClick
  end
  object BtnSend: TButton
    Left = 8
    Top = 346
    Width = 121
    Height = 25
    Caption = 'BtnSend'
    TabOrder = 2
    OnClick = BtnSendClick
  end
  object MemoLog: TMemo
    Left = 135
    Top = 8
    Width = 185
    Height = 336
    TabOrder = 3
  end
  object EditMsg: TEdit
    Left = 135
    Top = 350
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
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    Left = 88
    Top = 208
  end
end
