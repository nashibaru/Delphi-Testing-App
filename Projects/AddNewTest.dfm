object NewTest: TNewTest
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'New Test'
  ClientHeight = 124
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 56
    Height = 15
    Caption = 'Test Name'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 45
    Height = 15
    Caption = 'File Path'
  end
  object Label3: TLabel
    Left = 8
    Top = 69
    Width = 25
    Height = 15
    Caption = 'Type'
  end
  object Edit1: TEdit
    Left = 97
    Top = 8
    Width = 210
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 97
    Top = 37
    Width = 177
    Height = 23
    TabOrder = 1
  end
  object SaveTest: TButton
    Left = 232
    Top = 95
    Width = 75
    Height = 23
    Caption = 'Save'
    ModalResult = 1
    TabOrder = 2
  end
  object BrowseAu: TButton
    Left = 280
    Top = 37
    Width = 27
    Height = 23
    Caption = '...'
    TabOrder = 3
    OnClick = BrowseAuClick
  end
  object TestType: TComboBox
    Left = 97
    Top = 66
    Width = 210
    Height = 23
    TabOrder = 4
    Items.Strings = (
      ''
      'Procedural'
      'Functional')
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Skrypty AutoIt (*.au3)|*.au3|Wszystkie Pliki (*.*)|*.*'
    InitialDir = 'C:\AutoIt3\SciTE'
    Top = 96
  end
end
