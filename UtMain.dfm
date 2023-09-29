object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Check Sandboxie is present'
  ClientHeight = 70
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 25
    Width = 257
    Height = 13
    Caption = 'Check if program running in sandbox environment ....'
  end
  object btnCheck: TButton
    Left = 8
    Top = 8
    Width = 145
    Height = 49
    Caption = 'Check Sandbox'
    TabOrder = 0
    OnClick = btnCheckClick
  end
end
