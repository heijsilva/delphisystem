object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 537
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = FormClick
  TextHeight = 15
  object pnlInfo: TPanel
    Left = 0
    Top = 496
    Width = 813
    Height = 41
    Align = alBottom
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 488
    ExplicitWidth = 811
  end
  object btnConexao: TButton
    Left = 0
    Top = 471
    Width = 813
    Height = 25
    Align = alBottom
    Caption = 'Conectar'
    TabOrder = 1
    OnClick = btnConexaoClick
    ExplicitTop = 463
    ExplicitWidth = 811
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=Mongo'
      'Server=localhost')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 208
  end
  object FDPhysMongoDriverLink1: TFDPhysMongoDriverLink
    Left = 368
    Top = 224
  end
end
