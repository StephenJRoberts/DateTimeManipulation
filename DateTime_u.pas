unit DateTime_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCalendars, DateUtils;

type
  TfrmDateTimeManipulation = class(TForm)
    pnlDateTimeManipulation: TPanel;
    lblTimer: TLabel;
    tmrTimer: TTimer;
    cvwSelectDate: TCalendarView;
    lblFormatDate: TLabel;
    lblAltDate: TLabel;
    lblDaysBetween: TLabel;
    lblMonthsBetween: TLabel;
    lblYearsBetween: TLabel;
    procedure tmrTimerTimer(Sender: TObject);
    procedure cvwSelectDateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDateTimeManipulation: TfrmDateTimeManipulation;

implementation

{$R *.dfm}

procedure TfrmDateTimeManipulation.cvwSelectDateChange(Sender: TObject);
var
dteSelected,dteDate : TDateTime;
begin
dteSelected:=cvwSelectDate.Date;
lblFormatDate.Caption := 'Selected Date: ' + DateToStr(dteSelected);
lblAltDate.Caption := FormatDateTime('dddddd',dteSelected);
dteDate := EncodeDate(2030, 01, 01);
lblDaysBetween.Caption := 'Days Between ' + DateToStr(dteDate) + ' and '
+ DateToStr(dteSelected) + #58 + #32 + IntToStr(DaysBetween(dteDate, dteSelected));
lblMonthsBetween.Caption := 'Days Between ' + DateToStr(dteDate) + ' and '
+ DateToStr(dteSelected) + #58 + #32 + IntToStr(MonthsBetween(dteDate, dteSelected));
lblYearsBetween.Caption := 'Days Between ' + DateToStr(dteDate) + ' and '
+ DateToStr(dteSelected) + #58 + #32 + IntToStr(YearsBetween(dteDate, dteSelected));
end;

procedure TfrmDateTimeManipulation.FormCreate(Sender: TObject);
var
dteSelected,dteDate : TDateTime;
begin
lblTimer.Caption := TimeToStr(Time);
dteSelected:=cvwSelectDate.Date;
lblFormatDate.Caption := 'Selected Date: ' + DateToStr(dteSelected);
lblAltDate.Caption := FormatDateTime('dddddd',dteSelected);
dteDate := EncodeDate(2030, 01, 01);
lblDaysBetween.Caption := 'Days Between ' + DateToStr(dteDate) + ' and '
+ DateToStr(dteSelected) + #58 + #32 + IntToStr(DaysBetween(dteDate, dteSelected));
lblMonthsBetween.Caption := 'Days Between ' + DateToStr(dteDate) + ' and '
+ DateToStr(dteSelected) + #58 + #32 + IntToStr(MonthsBetween(dteDate, dteSelected));
lblYearsBetween.Caption := 'Days Between ' + DateToStr(dteDate) + ' and '
+ DateToStr(dteSelected) + #58 + #32 + IntToStr(YearsBetween(dteDate, dteSelected));
end;

procedure TfrmDateTimeManipulation.tmrTimerTimer(Sender: TObject);
begin
lblTimer.Caption := TimeToStr(Time);
end;

end.
