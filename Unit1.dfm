object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 313
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object PastValueLabel: TLabel
    Left = 8
    Top = 11
    Width = 6
    Height = 15
    Caption = '0'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 249
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 72
    Width = 41
    Height = 41
    Caption = '1'
    TabOrder = 1
    OnClick = AddValueButtonToEdit
  end
  object Button2: TButton
    Left = 80
    Top = 72
    Width = 41
    Height = 41
    Caption = '2'
    TabOrder = 2
    OnClick = AddValueButtonToEdit
  end
  object Button3: TButton
    Left = 152
    Top = 72
    Width = 41
    Height = 41
    Caption = '3'
    TabOrder = 3
    OnClick = AddValueButtonToEdit
  end
  object Button4: TButton
    Left = 8
    Top = 128
    Width = 41
    Height = 41
    Caption = '4'
    TabOrder = 4
    OnClick = AddValueButtonToEdit
  end
  object Button5: TButton
    Left = 80
    Top = 128
    Width = 41
    Height = 41
    Caption = '5'
    TabOrder = 5
    OnClick = AddValueButtonToEdit
  end
  object Button6: TButton
    Left = 152
    Top = 128
    Width = 41
    Height = 41
    Caption = '6'
    TabOrder = 6
    OnClick = AddValueButtonToEdit
  end
  object Button7: TButton
    Left = 80
    Top = 184
    Width = 41
    Height = 41
    Caption = '8'
    TabOrder = 7
    OnClick = AddValueButtonToEdit
  end
  object Button8: TButton
    Left = 152
    Top = 184
    Width = 41
    Height = 41
    Caption = '9'
    TabOrder = 8
    OnClick = AddValueButtonToEdit
  end
  object Button9: TButton
    Left = 8
    Top = 184
    Width = 41
    Height = 41
    Caption = '7'
    TabOrder = 9
    OnClick = AddValueButtonToEdit
  end
  object Button10: TButton
    Left = 80
    Top = 240
    Width = 41
    Height = 41
    Caption = '0'
    TabOrder = 10
    OnClick = AddValueButtonToEdit
  end
  object ResultButton: TButton
    Left = 152
    Top = 240
    Width = 41
    Height = 41
    Caption = '='
    TabOrder = 11
    OnClick = ResultButtonClick
  end
  object ClearButton: TButton
    Left = 268
    Top = 72
    Width = 41
    Height = 41
    Caption = 'Ce'
    TabOrder = 12
    OnClick = ClearButtonClick
  end
  object PlusButton: TButton
    Left = 216
    Top = 72
    Width = 41
    Height = 41
    Caption = '+'
    TabOrder = 13
    OnClick = ActionButtonClick
  end
  object MinusButton: TButton
    Left = 216
    Top = 128
    Width = 41
    Height = 41
    Caption = '-'
    TabOrder = 14
    OnClick = MinusButtonClick
  end
  object MultiplyButton: TButton
    Left = 216
    Top = 184
    Width = 41
    Height = 41
    Caption = '*'
    TabOrder = 15
    OnClick = ActionButtonClick
  end
  object DivideButton: TButton
    Left = 216
    Top = 240
    Width = 41
    Height = 41
    Caption = '/'
    TabOrder = 16
    OnClick = ActionButtonClick
  end
  object CommaButton: TButton
    Left = 8
    Top = 240
    Width = 41
    Height = 41
    Caption = ','
    TabOrder = 17
    OnClick = CommaButtonClick
  end
  object AllClearButton: TButton
    Left = 268
    Top = 128
    Width = 41
    Height = 41
    Caption = 'C'
    TabOrder = 18
    OnClick = AllClearButtonClick
  end
end
