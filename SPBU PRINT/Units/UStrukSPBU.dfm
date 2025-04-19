object FormStrukSPBU: TFormStrukSPBU
  Left = 310
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form Cetak Replika Struk SPBU'
  ClientHeight = 407
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object TLabel
    Left = 16
    Top = 144
    Width = 82
    Height = 16
    Caption = '&Tanggal struk'
    FocusControl = tglCetak
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 75
    Height = 16
    Caption = '&Header atas'
    FocusControl = mHeader
  end
  object TLabel
    Left = 16
    Top = 256
    Width = 82
    Height = 16
    Caption = '&Footer bawah'
    FocusControl = mFooter
  end
  object Label4: TLabel
    Left = 16
    Top = 352
    Width = 69
    Height = 16
    Caption = 'M&odel struk'
    FocusControl = cbFCetak
  end
  object tglCetak: TDateTimePicker
    Left = 104
    Top = 136
    Width = 93
    Height = 24
    Date = 42221.523049768520000000
    Time = 42221.523049768520000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object jamCetak: TDateTimePicker
    Left = 208
    Top = 136
    Width = 73
    Height = 24
    Date = 42221.523049768520000000
    Time = 42221.523049768520000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Kind = dtkTime
    ParentFont = False
    TabOrder = 1
  end
  object leNomorSPBU: TLabeledEdit
    Left = 104
    Top = 8
    Width = 177
    Height = 32
    TabStop = False
    EditLabel.Width = 84
    EditLabel.Height = 16
    EditLabel.Caption = '&Nomer SPBU '
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 5
    Text = '44.561.19'
  end
  object mHeader: TMemo
    Left = 104
    Top = 48
    Width = 177
    Height = 81
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Banyubiru Dukun Muntilan'
      'Magelang'
      'Telp. 0293 587177')
    ParentFont = False
    TabOrder = 6
    WordWrap = False
  end
  object leNoSelang: TLabeledEdit
    Left = 208
    Top = 196
    Width = 57
    Height = 24
    EditLabel.Width = 82
    EditLabel.Height = 16
    EditLabel.Caption = 'No. Selang     '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 3
    Text = '1'
  end
  object cbPompa: TCheckBox
    Left = 104
    Top = 172
    Width = 89
    Height = 17
    TabStop = False
    Caption = 'N&o. Pompa'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = cbPompaClick
  end
  object cbNoStruk: TCheckBox
    Left = 104
    Top = 228
    Width = 97
    Height = 17
    TabStop = False
    Caption = 'Nomor Nota'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = cbNoStrukClick
  end
  object UpDown1: TUpDown
    Left = 265
    Top = 168
    Width = 18
    Height = 24
    Associate = eNoPompa
    Min = 1
    Position = 1
    TabOrder = 9
  end
  object UpDown2: TUpDown
    Left = 265
    Top = 196
    Width = 16
    Height = 24
    Associate = leNoSelang
    Min = 1
    Position = 1
    TabOrder = 10
  end
  object mFooter: TMemo
    Left = 104
    Top = 256
    Width = 177
    Height = 73
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Terima kasih dan selamat jalan')
    ParentFont = False
    TabOrder = 11
    WordWrap = False
  end
  object btPreview: TButton
    Left = 152
    Top = 344
    Width = 65
    Height = 25
    Caption = 'Pre&view'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = btPreviewClick
  end
  object btPrint: TButton
    Left = 224
    Top = 344
    Width = 57
    Height = 25
    Caption = 'Print'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = btPreviewClick
  end
  object tcBensol: TTabControl
    Left = 296
    Top = 8
    Width = 289
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 12
    Tabs.Strings = (
      'BioPertamax'
      'Pertamax'
      'Pertamax Plus'
      'Pertalite'
      'BioPremium'
      'Premium'
      'Bio Solar'
      'Solar'
      'Dexlite'
      'Pertamina Dex')
    TabIndex = 0
    OnChange = tcBensolChange
    OnChanging = tcBensolChanging
    object rkleHPokok: TRKLEdit
      Left = 184
      Top = 78
      Width = 89
      Height = 24
      TabStop = False
      EditLabel.Width = 99
      EditLabel.Height = 16
      EditLabel.Caption = 'Harga xxx / liter   '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 0
      OnChange = rkleHPokokChange
      OnExit = rkleHPokokExit
      OnKeyPress = rkleHPokokKeyPress
    end
    object rkeBeliRp: TRKLEdit
      Left = 184
      Top = 110
      Width = 89
      Height = 24
      EditLabel.Width = 113
      EditLabel.Height = 16
      EditLabel.Caption = 'Beli dalam &rupiah   '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
      OnChange = rkeBeliRpChange
      OnEnter = rkeBeliRpEnter
      OnKeyPress = rkleHPokokKeyPress
    end
    object rkeBeliLtr: TRKLEdit
      Left = 184
      Top = 140
      Width = 89
      Height = 24
      EditLabel.Width = 97
      EditLabel.Height = 16
      EditLabel.Caption = 'Beli dalam &liter   '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 2
      OnChange = rkeBeliLtrChange
      OnEnter = rkeBeliLtrEnter
      OnKeyPress = rkleHPokokKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 386
    Width = 605
    Height = 21
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 192
    Width = 289
    Height = 177
    Caption = ' Opsi cetak '
    TabOrder = 16
    object Label2: TLabel
      Left = 24
      Top = 142
      Width = 90
      Height = 16
      Caption = '&Format tanggal'
      FocusControl = cbFTgl
    end
    object Label3: TLabel
      Left = 24
      Top = 112
      Width = 76
      Height = 16
      Caption = '&Warna cetak'
      FocusControl = cbWarna
    end
    object cbFTgl: TComboBox
      Left = 128
      Top = 136
      Width = 137
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = 'cbFTgl'
      OnChange = cbFTglChange
    end
    object cbWarna: TColorBox
      Left = 128
      Top = 106
      Width = 137
      Height = 22
      DefaultColorColor = clPurple
      Style = [cbStandardColors]
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 1
      OnChange = cbWarnaChange
    end
    object cbLogo: TCheckBox
      Left = 24
      Top = 24
      Width = 129
      Height = 17
      Caption = 'Tampilkan logo / kop'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = cbLogoClick
    end
    object cbSWarnai: TCheckBox
      Left = 164
      Top = 24
      Width = 109
      Height = 17
      Caption = 'Sesuaikan warna'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cbSWarnaiClick
    end
    object Panel1: TPanel
      Left = 24
      Top = 44
      Width = 241
      Height = 53
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Kop struk [klik disini u/ ganti gambar]'
      TabOrder = 4
      object Image1: TImage
        Left = 2
        Top = 2
        Width = 237
        Height = 49
        Hint = 'Klik gambar untuk mengganti dengan gambar lain'
        Align = alClient
        ParentShowHint = False
        Proportional = True
        ShowHint = True
        Stretch = True
        OnClick = Image1Click
      end
    end
  end
  object cbFCetak: TComboBox
    Left = 104
    Top = 344
    Width = 41
    Height = 24
    ItemHeight = 16
    TabOrder = 17
    Text = '1'
    OnChange = cbFCetakChange
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
  end
  object eNoPompa: TEdit
    Left = 208
    Top = 168
    Width = 57
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = '1'
  end
  object eNoStruk: TEdit
    Left = 208
    Top = 224
    Width = 73
    Height = 24
    TabOrder = 4
  end
  object opdLogo: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 112
    Top = 280
  end
end
