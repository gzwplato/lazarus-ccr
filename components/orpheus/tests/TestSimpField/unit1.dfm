object Form1: TForm1
  Left = 192
  Top = 114
  Width = 423
  Height = 323
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 385
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 'Enter a positive integer, then move to next control to validate.'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 385
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Enter a positive real number, then move to next control to valid' +
      'ate.'
    WordWrap = True
  end
  object OvcSimpleField1: TOvcSimpleField
    Left = 168
    Top = 56
    Width = 81
    Height = 21
    Cursor = crIBeam
    DataType = sftString
    CaretOvr.Shape = csBlock
    ControlCharColor = clRed
    DecimalPlaces = 0
    EFColors.Disabled.BackColor = clWindow
    EFColors.Disabled.TextColor = clGrayText
    EFColors.Error.BackColor = clRed
    EFColors.Error.TextColor = clBlack
    EFColors.Highlight.BackColor = clHighlight
    EFColors.Highlight.TextColor = clHighlightText
    PictureMask = 'X'
    TabOrder = 0
    OnError = OvcSimpleFieldError
    OnUserValidation = OvcSimpleField1UserValidation
  end
  object OvcSimpleField2: TOvcSimpleField
    Left = 168
    Top = 136
    Width = 81
    Height = 21
    Cursor = crIBeam
    DataType = sftString
    CaretOvr.Shape = csBlock
    ControlCharColor = clRed
    DecimalPlaces = 0
    EFColors.Disabled.BackColor = clWindow
    EFColors.Disabled.TextColor = clGrayText
    EFColors.Error.BackColor = clRed
    EFColors.Error.TextColor = clBlack
    EFColors.Highlight.BackColor = clHighlight
    EFColors.Highlight.TextColor = clHighlightText
    PictureMask = 'X'
    TabOrder = 1
    OnError = OvcSimpleFieldError
    OnUserValidation = OvcSimpleField2UserValidation
  end
end
