object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 240
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNum1: TLabel
    Left = 40
    Top = 24
    Width = 51
    Height = 13
    Caption = '1'#186' N'#250'mero'
  end
  object lblNum2: TLabel
    Left = 216
    Top = 24
    Width = 51
    Height = 13
    Caption = '2'#186' N'#250'mero'
  end
  object lblResult: TLabel
    Left = 40
    Top = 100
    Width = 108
    Height = 33
    Caption = 'Resposta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 40
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Insira um n'#250'mero'
    OnChange = edt1Change
    OnKeyPress = FormKeyPress1
  end
  object edt2: TEdit
    Left = 216
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Insira outro n'#250'mero'
    OnChange = edt2Change
    OnKeyPress = FormKeyPress2
  end
  object memResult: TMemo
    Left = 40
    Top = 144
    Width = 209
    Height = 57
    Lines.Strings = (
      ''
      ''
      ''
      ''
      '')
    TabOrder = 2
  end
end
