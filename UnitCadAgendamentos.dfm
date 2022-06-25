object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 490
  ClientWidth = 774
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
    Left = 24
    Top = 141
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 168
    Top = 141
    Width = 78
    Height = 13
    Caption = 'Nome do Cliente'
  end
  object Label4: TLabel
    Left = 24
    Top = 205
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 168
    Top = 205
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 24
    Top = 269
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 24
    Top = 325
    Width = 78
    Height = 13
    Caption = 'Nome do M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 36
      Width = 156
      Height = 25
      Caption = 'Agendamentos'
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
      DataSource = DM.dbAgendamentos
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 160
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = DM.dbAgendamentos
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 224
    Width = 121
    Height = 21
    DataField = 'data'
    DataSource = DM.dbAgendamentos
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 224
    Width = 121
    Height = 21
    DataField = 'hora'
    DataSource = DM.dbAgendamentos
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 168
    Top = 160
    Width = 177
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dbAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dbPaciente
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 288
    Width = 145
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dbAgendamentos
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista')
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 344
    Width = 145
    Height = 21
    DataField = 'medico'
    DataSource = DM.dbAgendamentos
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 408
    Top = 160
    Width = 313
    Height = 205
    DataSource = DM.dbAgendamentos
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'medico'
        Visible = True
      end>
  end
end
