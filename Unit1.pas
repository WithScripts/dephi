unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    ResultButton: TButton;
    ClearButton: TButton;
    PlusButton: TButton;
    MinusButton: TButton;
    MultiplyButton: TButton;
    DivideButton: TButton;
    CommaButton: TButton;
    AllClearButton: TButton;
    procedure AddValueButtonToEdit(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure ActionButtonClick(Sender: TObject);
    procedure ResultButtonClick(Sender: TObject);
    procedure MinusButtonClick(Sender: TObject);
    procedure CommaButtonClick(Sender: TObject);
    function ActionCase() : String;
    procedure AllClearButtonClick(Sender: TObject);
  private
    { Private declarations }
    pastValue: real;
    selectedAction: char;
    comma:bool;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AddValueButtonToEdit(Sender: TObject);
begin
  Edit1.Text := Edit1.Text + (Sender as TButton).Caption;
end;
procedure TForm1.AllClearButtonClick(Sender: TObject);
begin
  Edit1.Text := '';
  pastValue := 0;
end;

procedure TForm1.ActionButtonClick(Sender: TObject);
begin
  selectedAction := ((Sender as TButton).Caption)[1];
  if Length(Edit1.Text) > 0 then
  begin
    ResultButtonClick(Sender);
    pastValue := StrToFloat(Edit1.Text);
    Edit1.Text := '';
  end;
  comma := false;
end;
procedure TForm1.ClearButtonClick(Sender: TObject);
begin
  Edit1.Text := '';
end;

procedure TForm1.CommaButtonClick(Sender: TObject);
begin
  if not comma then
  begin
    if Length(Edit1.Text)>0 then
    begin
      AddValueButtonToEdit(Sender);
      comma := true;
    end;
  end;

end;

procedure TForm1.MinusButtonClick(Sender: TObject);
begin
  if Length(Edit1.Text) = 0 then
  begin
    AddValueButtonToEdit(Sender);
  end
  else if (Length(Edit1.Text) = 1) and (Edit1.Text[1] = '-') then
  begin
    Edit1.Text := '';
  end
  else
  begin
    ActionButtonClick(Sender);
  end;
end;

procedure TForm1.ResultButtonClick(Sender: TObject);
begin
  if not (pastValue = 0) then
  begin
  ActionCase();
  Edit1.Text := ActionCase();
  comma := false;
  end;
end;

function TForm1.ActionCase() : String;
  var resultValue, currentValue: real;
  begin
  currentValue := StrToFloat(Edit1.Text);
  case selectedAction of
      '+' : resultValue := pastValue + currentValue;
      '-' : resultValue := pastValue - currentValue;
      '*' : resultValue := pastValue * currentValue;
      '/' : resultValue := pastValue / currentValue;
    end;
  Exit(FloatToStr(resultValue));
end;
end.
