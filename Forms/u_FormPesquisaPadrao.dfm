object frmPesquisaPadrao: TfrmPesquisaPadrao
  Left = 0
  Top = 0
  Caption = 'FORMUL'#193'RIO DE PESQUISA PADR'#195'O'
  ClientHeight = 500
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1076
    Height = 81
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 1030
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 140
      Height = 19
      Caption = 'Op'#231#245'es de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 12
      Width = 42
      Height = 19
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 488
      Top = 12
      Width = 39
      Height = 19
      Caption = 'In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 632
      Top = 12
      Width = 26
      Height = 19
      Caption = 'Fim'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbChavePesquisa: TComboBox
      Left = 24
      Top = 37
      Width = 140
      Height = 21
      TabOrder = 0
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'CADASTRO'
        'PER'#205'ODO')
    end
    object edtNome: TEdit
      Left = 192
      Top = 37
      Width = 265
      Height = 21
      TabOrder = 1
    end
    object mkInicio: TMaskEdit
      Left = 488
      Top = 37
      Width = 120
      Height = 21
      EditMask = '!99/99/00;0;_'
      MaxLength = 8
      TabOrder = 2
      Text = ''
    end
    object mkFim: TMaskEdit
      Left = 632
      Top = 37
      Width = 120
      Height = 21
      EditMask = '!99/99/00;0;_'
      MaxLength = 8
      TabOrder = 3
      Text = ''
    end
    object btnPesquisar: TBitBtn
      Left = 765
      Top = 19
      Width = 92
      Height = 45
      Caption = '&Pesquisar'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        EFEFEFD9D9D9D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8
        D8D8D8D8D8D8D8D8DCDCDCF8F8F8EFEFEFC0C0C0E8E8E8FFFFFFFFFFFFFCFCFC
        AAAAAAB2B2B2B2B2B2B1B1B1B0B0B0ADADADADADADABABABAAAAAAA7A7A7A7A7
        A7A5A5A5A4A4A4A2A2A2A1A1A1A0A0A09F9F9F9C9C9C9B9B9B9B9B9B9A9A9A98
        9898969696959595929292AEAEAE7474741212125B5B5BEDEDEDFFFFFFFBFBFB
        D7D7D7E8E8E8E3E3E3E3E3E3E3E3E3E3E3E3E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2E1E1E1E1E1E1E1E1E1E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0E0E0E0DFDFDFC2C2C2515151141414020202010101BFBFBFFFFFFFFBFBFB
        D9D9D9E4E4E4E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2E2CFCFCF6464641C1C1C060606060606353535F4F4F4FFFFFFFBFBFB
        D9D9D9E6E6E6E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E4
        E4E4D1D1D16969692727270B0B0B1717173D3D3DEFEFEFFFFFFFFFFFFFFBFBFB
        D9D9D9E8E8E8E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7D3
        D3D36F6F6F3333330F0F0F2B2B2B494949EFEFEFFFFFFFFFFFFFFFFFFFFBFBFB
        DBDBDBE9E9E9E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E7E7E7D4D4D473
        73733F3F3F1414144040404F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DBDBDBEAEAEAE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8D5D5D57878784B
        4B4B1919195454545E5E5EBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DCDCDCEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E8E8E8E7E7E7E7E7E7E9E9E9E9E9E9E9E9E9E9E9E9E6E6E69595955858581F
        1F1F6767676E6E6EDADADAC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DCDCDCEDEDEDECECECECECECECECECECECECECECECECECECEAEAEAD8D8D8AEAE
        AE9090908B8B8B8B8B8B9A9A9AC2C2C2E4E4E4E8E8E8AFAFAF81818124242479
        79797C7C7CDEDEDEEAEAEACBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DDDDDDEEEEEEEDEDEDEDEDEDEEEEEEEFEFEFEEEEEEE3E3E3A7A7A7A1A1A1C3C3
        C3E5E5E5E5E5E5E6E6E6D0D0D0A3A3A38888889C9C9C9D9D9D7878796C6D6E94
        9494E1E1E1EDEDEDECECECCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DDDDDDF0F0F0F1F1F1F2F2F2F2F2F2F2F2F2D9D9D99F9F9FD4D3D3EEEDEDF9F8
        F8FCFBFBFBFAFAF8F7F7F6F5F5F5F2F2E5E4E4979797797A7A919395CACBCBEE
        EEEEEEEEEEEEEEEEEDEDEDCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DDDDDDF1F1F1F3F3F3F3F3F3F3F3F3E0E0E0A0A0A0E2E1E1F4F2F2F7F5F5F8F8
        F8F9F9F9F9F9F9F8F7F7F6F4F4F3F1F1F1EDEDEEECEC9C9D9EADAEAEEFEFEFF0
        F0F0F0F0F0F0F0F0EFEFEFD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        DFDFDFF3F3F3F5F5F5F5F5F5F1F1F1ABABABD9D8D8F1EEEEF3F0F0F5F3F3F7F5
        F5F8F6F6F7F6F6F6F5F5F5F2F2F2EFEFEFEDEDEDEBEBEDEBEB9E9E9EEAEAEAF2
        F2F2F2F2F2F2F2F2F1F1F1D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E0E0E0F4F4F4F6F6F6F6F6F6D7D7D7BAB9B9ECE9E9F0EDEDF1EFEFF3F1F1F5F2
        F2F5F3F3F5F3F3F4F2F2F2F0F0F1EEEEEFECECEDE9E9EBE7E7CDCDCDCACACAF2
        F2F2F2F2F2F2F2F2F2F2F2D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E0E0E0F5F5F5F7F7F7F6F6F6BFBFBFD3D1D1ECE8E8EEEBEBF0EDEDF1EFEFF1F0
        F0F2F0F0F2F0F0F1F0F0F1EEEEF0ECECEEEAEAECE7E7E9E5E5EDEAEAB6B6B6F2
        F2F2F3F3F3F3F3F3F4F4F4D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E1E1E1F6F6F6F8F8F8F6F6F6BABABAD9D7D7EBE7E7ECE8E8EEEAEAF0EDEDF1EE
        EEF2F0F0F2F0F0F2EFEFF0EDEDEEEBEBECE8E8EAE6E6E8E3E3E6E3E3C4C4C4F4
        F4F4F4F4F4F4F4F4F5F5F5D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E1E1E1F7F7F7F9F9F9F6F6F6B3B3B3DFDDDDEEEBEBF1EEEEF3F1F1F4F2F2F5F3
        F3F5F3F3F5F3F3F5F3F3F4F2F2F3F1F1F2F0F0F0EDEDECE8E8E0DDDDCDCDCDF6
        F6F6F7F7F7F5F5F5F6F6F6D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E3E3E3F8F8F8FBFBFBF8F8F8B3B3B3E0DEDEF3F1F1F5F2F2F5F2F2F5F2F2F5F3
        F3F5F3F3F5F3F3F5F3F3F5F2F2F5F2F2F4F1F1F3F0F0F1EFEFE3E1E1D7D7D7FA
        FAFAFAFAFAF7F7F7F7F7F7D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E3E3E3F9F9F9FBFBFBFAFAFAC6C6C6CCCBCBF2F0F0F5F4F4F5F4F4F6F4F4F5F3
        F3F5F3F3F5F3F3F5F3F3F5F3F3F5F2F2F5F2F2F4F2F2EFEEEEE3E1E1E0E0E0FB
        FBFBFBFBFBF9F9F9F7F7F7DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E4E4E4FAFAFAFBFBFBFBFBFBE1E1E1B1B0B0F0EFEFF4F3F3F8F8F8FBFBFBF8F7
        F7F6F5F5F6F5F5F6F5F5F5F4F4F6F5F5F5F4F4F2F1F1EEEDEDE4E3E3E7E7E7F6
        F6F6F4F4F4F4F4F4EEEEEEDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E5E5E5FAFAFAFBFBFBFBFBFBF5F5F5A7A7A7E5E4E4F2F1F1F7F6F6F9F9F9F8F7
        F7F7F6F6F7F6F6F7F6F6F6F6F6F5F5F5F4F3F3F1F0F0E7E6E6E0DFDFEEEEEEED
        EDEDEBEBEBEAEAEAE2E2E2DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E5E5E5FBFBFBFCFCFCFCFCFCFBFBFBE2E2E2A0A0A0F0F0F0F4F4F4F6F5F5F6F6
        F6F6F6F6F7F6F6F6F6F6F6F6F6F5F5F5F3F2F2F0EFEFD5D4D4E7E7E7E8E8E8E5
        E5E5E3E3E3E3E3E3DDDDDDDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E5E5E5FBFBFBFCFCFCFCFCFCFCFCFCFBFBFBD1D1D19F9F9FF0EFEFF6F5F5F6F6
        F6F6F6F6F7F6F6F6F6F6F6F6F6F5F5F5F0EFEFC7C6C6DDDDDDE7E7E7E1E1E1DD
        DDDDDADADADADADAD4D4D4D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E7E7E7FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBDADADA989898C0C0C0F1F1
        F1F8F8F8F8F7F7F7F7F7F2F1F1CECECEBAB9B9DDDDDDCBCBCBCFCFCFD0D0D0D1
        D1D1D1D1D1CACACABBBBBBEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E7E7E7FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBF2F2F2CACACA9C9C
        9CA5A5A5B0AFAFABABABACACACD3D3D3EBEBEBE4E4E4E3E3E3FCFCFCFCFCFCFA
        FAFAE8E8E8C9C9C9EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E8E8E8FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFB
        FBF1F1F1EEEEEEF2F2F2FBFBFBF8F8F8F2F2F2E4E4E4E6E6E6FCFCFCFAFAFAE8
        E8E8CACACAEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E9E9E9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCF8F8F8F2F2F2E5E5E5E9E9E9FAFAFAE8E8E8CB
        CBCBF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E9E9E9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCF8F8F8F2F2F2E8E8E8ECECECE8E8E8CECECEF1
        F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        E9E9E9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCF9F9F9F4F4F4ECECECE4E4E4D0D0D0F1F1F1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
        ECECECFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFAFAFAF7F7F7EEEEEEDBDBDBF0F0F0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F0F0F0F0F0F0F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0F0F0E9E9E9F4F4F4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 4
    end
    object btnTransferir: TBitBtn
      Left = 867
      Top = 19
      Width = 92
      Height = 45
      Caption = '&Transferir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECE5E5E5FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF3F3F3F5D5D5DFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE1E1E1666666333333333333575757FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9F9F99A9A9A383838333333333333333333575757FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C9C9C95151513333333333333333333333333333334D4D4DC7C7C7CCCCCCD1D1
        D1D7D7D7DBDBDBE0E0E0E5E5E5EBEBEBEFEFEFF4F4F4FAFAFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC7B7B7B
        3333333333333333333333333333333333333333333333333333333333333333
        333333333333333333333333333333333333333333333333333434343838383F
        3F3F4444444B4B4B5151515757575E5E5E666666727272C4C4C4575757333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333666666D0D0D0555555
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333373737404040A3A3A3FFFFFFFBFBFB
        9F9F9F3B3B3B333333333333333333333333333333474747ABABABAFAFAFB3B3
        B3B7B7B7BBBBBBBFBFBFC2C2C2C6C6C6CACACACECECED2D2D2D7D7D7DCDCDCE1
        E1E1E6E6E6EBEBEBF0F0F0F5F5F5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE6E6E6707070333333333333333333333333575757FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBDBDBD484848333333333333575757FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3848484343434585858FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEC7C7C7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7CE
        CECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58585834
        3434848484F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57575733
        3333333333484848BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57575733
        33333333333333333333336E6E6EE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFCF5F5F5F0F0F0EBEBEBE6E6E6E1E1E1DCDCDCD7D7D7D2D2D2CECE
        CECACACAC6C6C6C2C2C2BEBEBEBABABAB6B6B6B2B2B2AFAFAFABABAB48484833
        33333333333333333333333333333B3B3B9F9F9FFBFBFBFFFFFFA3A3A3404040
        3737373333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333555555D0D0D0666666333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333575757C4C4C4737373
        6868685E5E5E5757575151514B4B4B4545453F3F3F3939393434343333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333333333337B7B7BEDEDEDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF4F4
        F4EFEFEFEBEBEBE6E6E6E0E0E0DBDBDBD7D7D7D2D2D2CCCCCCC7C7C74D4D4D33
        3333333333333333333333333333515151C9C9C9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57575733
        33333333333333333838389A9A9AF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57575733
        3333333333666666E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5D5D3F
        3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6ED
        EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 5
    end
    object btnImprimir: TBitBtn
      Left = 969
      Top = 19
      Width = 90
      Height = 45
      Caption = '&Imprimir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF867E78574C42574B41574B41574B41574B
        41574B41574B41574B41574B41574B41574B41574B41574B41574B41574B4157
        4B41877F78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8680786A5F566A5F556A5E55695E55695E
        55695E55695E55695E55695E54695E54695E54695E54695E54695E54695E5469
        5E54877F78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8E7E7497887D97887D97887D97887D64574D9B928B9B928B9B928B9B928B9B92
        8A9A928A9A91899A91899A91899A90889A908899908899908899908799908799
        8F8664574D97887D97887D97887D97887D8E7F74FFFFFFFFFFFFFFFFFFFFFFFF
        9F9188EEEAE7EBE6E3EBE6E3EBE6E380776FFDFBF9FDFBF8FDFAF7FDFAF7FDF9
        F6FDF9F5FCF8F4FCF8F4FCF7F3FCF7F2FCF7F1FCF6F1FBF6F0FBF5EFFBF5EEFB
        F4EE80776FEBE6E3EBE6E3EBE6E3EBE6E39B8D83FFFFFFFFFFFFFFFFFFFFFFFF
        A3968DF4F1EFEEEAE7EEEAE7EEEAE7A59E9866615C66615C66615C66615C6661
        5C66615C66615C66615C66615C66615C66615C66615C66615C66615C66615C66
        615CA59D97EEEAE7EEEAE7EEEAE7EEEAE79C8E84FFFFFFFFFFFFFFFFFFFFFFFF
        A3968DF0EDEBE9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4
        E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9
        E4E0E9E4E0E9E4E0E9E4E0E9E4E0E9E4E09A8C82FFFFFFFFFFFFFFFFFFFFFFFF
        A3968DEDE9E6E4DEDAE4DEDAE4DEDAE4DEDAE4DEDAE4DEDAE4DEDAE4DEDAE4DE
        DAE4DEDAE4DEDAE4DEDAE4DEDAE4DEDAE4DEDAE4DEDADBD6D3C7C6C6C7C6C6C7
        C6C6C7C6C6C7C6C6D1CECCE4DEDAE4DEDA998A7FFFFFFFFFFFFFFFFFFFFFFFFF
        A3968DEAE5E2E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8
        D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3E0D8D3B1ABA78A9D8CA6C5AAA6
        C5AAA6C5AAA6C5AA817D7BE0D8D3E0D8D397887DFFFFFFFFFFFFFFFFFFFFFFFF
        A2968DE7E1DDDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2
        CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCDBD2CCAEA7A38A9D8CA6C4AAA6
        C4AAA6C4AAA6C4AA807B79DBD2CCDBD2CC96867BFFFFFFFFFFFFFFFFFFFFFFFF
        A2968DE4DDD9D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5D6CC
        C5D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5D6CCC5C8BFB8AAA39EAAA39EAA
        A39EAAA39EAAA39EB9B1ABD6CCC5D6CCC5948478FFFFFFFFFFFFFFFFFFFFFFFF
        9E9086E9E4E0E6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0
        DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6E0DCE6
        E0DCE6E0DCE6E0DCE6E0DCE6E0DCDCD4CE907F73FFFFFFFFFFFFFFFFFFFFFFFF
        938276BEAFA4B5A497B4A396B4A396B4A396B4A396B4A396B4A396B4A396B4A3
        96B4A396B4A396B4A396B4A396B4A396B4A396B4A396B4A396B4A396B4A396B4
        A396B4A396B4A396B4A396B5A496B5A497897669FFFFFFFFFFFFFFFFFFFFFFFF
        938276BEAFA4B5A4973C36322827272827272827272827272827272827272827
        2728272728272728272728272728272728272728272728272728272728272728
        272728272728272738312CB19F91B5A497897669FFFFFFFFFFFFFFFFFFFFFFFF
        938276BEAFA4B5A4973C36326C69696C69696C69696C69696C69696C69696C69
        696C69696C69696C69696C69696C69696C69696C69696C69696C69696C69696C
        69696C69696C696938312CB19F91B5A497897669FFFFFFFFFFFFFFFFFFFFFFFF
        938276BEAFA4B5A4973C36325A57575A57575A57575A57575A57575A57575A57
        575A57575A57575A57575A57575A57575A57575A57575A57575A57575A57575A
        57575A57575A575738312CB19F91B5A497897669FFFFFFFFFFFFFFFFFFFFFFFF
        938277BEAFA4B4A3963C36324946464946464441413734343734343734343734
        3437343437343437343437343437343437343437343437343437343437343444
        414149464649464638312CB19F91B4A39689776AFFFFFFFFFFFFFFFFFFFFFFFF
        B3A8A0A2958CA2958C36312F3734343734346A6562D2C8BFD2C8BFD2C8BFD2C8
        BFD2C8BFD2C8BFD2C8BFD2C8BFD2C8BFD2C8BFD2C8BFD2C8BFD2C8BFD2C8BF6C
        666337343437343436312FA2958CA2958CB2A79FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF5656560F0E0E0F0E0E5B5753F8EDE2F8EDE2F8EDE2F8ED
        E2F8EDE2F8EDE2F8EDE2F8EDE2F8EDE2F8EDE2F8EDE2F8EDE2F8EDE2F8EDE25D
        58540F0E0E0F0E0E555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B597F9EFE4F9EFE4F9EFE4F9EF
        E4F9EFE4F9EFE4F9EFE4F9EFE4F9EFE4F9EFE4F9EFE4F9EFE4F9EFE4F9EFE4D2
        B598FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B598FAF0E7FAF0E7FAF0E7FAF0
        E7FAF0E7FAF0E7FAF0E7FAF0E7FAF0E7FAF0E7FAF0E7FAF0E7FAF0E7FAF0E7D2
        B699FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B699FAF2EAFAF2EAFAF2EAFAF2
        EAFAF2EAFAF2EAFAF2EAFAF2EAFAF2EAFAF2EAFAF2EAFAF2EAFAF2EAFAF2EAD2
        B69AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B69AFBF4EDFBF4EDFBF4EDFBF4
        EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDD3
        B79BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2B79BFBF6F0FBF6F0FBF6F0FBF6
        F0FBF6F0FBF6F0FBF6F0FBF6F0FBF6F0FBF6F0FBF6F0FBF6F0FBF6F0FBF6F0D3
        B89CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3B89CFCF7F3FCF7F3FCF7F3FCF7
        F3FCF7F3FCF7F3FCF7F3FCF7F3FCF7F3FCF7F3FCF7F3FCF7F3FCF7F3FCF7F3D3
        B89DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3B89DFDF9F6FDF9F6FDF9F6FDF9
        F6FDF9F6FDF9F6FDF9F6FDF9F6FDF9F6FDF9F6FDF9F6FDF9F6FDF9F6FDF9F6D3
        B99EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3B99EFDFBF8FDFBF8FDFBF8FDFB
        F8FDFBF8FDFBF8FDFBF8FDFBF8FDFBF8FDFBF8FDFBF8FDFBF8FDFBF8FDFBF8D3
        B99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCAE8FE8DACCE8DACCE8DACCE8DA
        CCE8DACCE8DACCE8DACCE8DACCE8DACCE8DACCE8DACCE8DACCE8DACCE8DACCCC
        AF90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DDD0E9DDD0E9DDD0E9DDD0E9DD
        D0E9DDD0E9DDD0E9DDD0E9DDD0E9DDD0E9DDD0E9DDD0E9DDD0E9DDD0E9DDD0E9
        DDD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 1076
    Height = 355
    Align = alClient
    DataSource = dsPesqPadrao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 436
    Width = 1076
    Height = 64
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 983
  end
  object qryPesqPadrao: TFDQuery
    Connection = DM.conexao
    Left = 912
    Top = 168
  end
  object dsPesqPadrao: TDataSource
    DataSet = qryPesqPadrao
    Left = 912
    Top = 240
  end
end