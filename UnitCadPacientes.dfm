object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 547
  ClientWidth = 768
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
  object Label2: TLabel
    Left = 40
    Top = 136
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 162
    Top = 136
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 40
    Top = 200
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 40
    Top = 264
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 248
    Top = 264
    Width = 85
    Height = 13
    Caption = 'Data do Cadastro'
  end
  object Label7: TLabel
    Left = 400
    Top = 136
    Width = 81
    Height = 13
    Caption = 'Buscar Pacientes'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 36
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 364
      Top = 36
      Width = 390
      Height = 41
      DataSource = DM.dbPaciente
      TabOrder = 0
    end
  end
  object txtID: TDBEdit
    Left = 40
    Top = 155
    Width = 89
    Height = 21
    DataField = 'id'
    DataSource = DM.dbPaciente
    ReadOnly = True
    TabOrder = 1
  end
  object txtNomComplet: TDBEdit
    Left = 40
    Top = 219
    Width = 329
    Height = 21
    DataField = 'nome'
    DataSource = DM.dbPaciente
    TabOrder = 3
  end
  object txtCelular: TDBEdit
    Left = 40
    Top = 283
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = DM.dbPaciente
    MaxLength = 14
    TabOrder = 4
  end
  object txtCPF: TDBEdit
    Left = 162
    Top = 155
    Width = 151
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dbPaciente
    TabOrder = 2
  end
  object txtData: TDBEdit
    Left = 248
    Top = 283
    Width = 121
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dbPaciente
    MaxLength = 10
    ReadOnly = True
    TabOrder = 5
  end
  object gridPacientes: TDBGrid
    Left = 400
    Top = 182
    Width = 360
    Height = 315
    DataSource = DM.dbPaciente
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    StyleName = 'T'
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'PACIENTES CADASTRADOS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBuscar: TEdit
    Left = 400
    Top = 155
    Width = 360
    Height = 21
    TabOrder = 6
    OnChange = txtBuscarChange
  end
end
