object DashboardFrame: TDashboardFrame
  Left = 0
  Top = 0
  Width = 666
  Height = 340
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  object HeaderPanel: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 666
    Height = 89
    Hint = ''
    ParentColor = False
    Color = clTeal
    Align = alTop
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 0
    ExplicitLeft = -131
    ExplicitWidth = 451
    object UniLabel5: TUniLabel
      Left = 56
      Top = 27
      Width = 204
      Height = 39
      Hint = ''
      Caption = 'My Dashboard'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      TabOrder = 1
    end
  end
end
