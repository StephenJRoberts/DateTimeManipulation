object frmDateTimeManipulation: TfrmDateTimeManipulation
  Left = 0
  Top = 0
  Caption = 'Date and Time Manipulation'
  ClientHeight = 414
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlDateTimeManipulation: TPanel
    Left = -3
    Top = 8
    Width = 865
    Height = 401
    TabOrder = 0
    object lblTimer: TLabel
      Left = 8
      Top = 0
      Width = 102
      Height = 37
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblFormatDate: TLabel
      Left = 308
      Top = 56
      Width = 133
      Height = 30
      Caption = 'Selected Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblAltDate: TLabel
      Left = 308
      Top = 80
      Width = 6
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblDaysBetween: TLabel
      Left = 308
      Top = 232
      Width = 304
      Height = 30
      Caption = 'Days Between 01/01/2030 and []:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblMonthsBetween: TLabel
      Left = 308
      Top = 256
      Width = 330
      Height = 30
      Caption = 'Months Between 01/01/2030 and []:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblYearsBetween: TLabel
      Left = 308
      Top = 280
      Width = 307
      Height = 30
      Caption = 'Years Between 01/01/2030 and []:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cvwSelectDate: TCalendarView
      Left = 8
      Top = 56
      Date = 44862.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -20
      Font.Name = 'Nirmala UI Semilight'
      Font.Style = []
      HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      HeaderInfo.DaysOfWeekFont.Color = clWindowText
      HeaderInfo.DaysOfWeekFont.Height = -13
      HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      HeaderInfo.DaysOfWeekFont.Style = []
      HeaderInfo.Font.Charset = DEFAULT_CHARSET
      HeaderInfo.Font.Color = clWindowText
      HeaderInfo.Font.Height = -20
      HeaderInfo.Font.Name = 'Segoe UI'
      HeaderInfo.Font.Style = []
      HighlightColor = clGreen
      MaxYear = 2070
      MinYear = 1650
      OnChange = cvwSelectDateChange
      ParentFont = False
      SelectionColor = clGreen
      TabOrder = 0
      TodayColor = clGray
    end
  end
  object tmrTimer: TTimer
    OnTimer = tmrTimerTimer
    Left = 128
    Top = 16
  end
end
