unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  protected
    { Déclarations protégées }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
 Params.Style:=(Params.Style or WS_POPUP) and (not WS_DLGFRAME);
end; 

procedure TForm1.Button1Click(Sender: TObject);
begin
 Close;
end;

end.
