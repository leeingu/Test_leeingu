unit Log_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,TestDB, Data.DB, Vcl.Grids, Vcl.DBGrids, dbisamct, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ListView1: TListView;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure PageControl1Change(Sender: TObject);
     procedure FormClick(Sender: TObject);
  private
    { Private declarations }
     var
      Alert_Thread : TThread;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
type
  TAlert_Thread = class(TThread)
    procedure Execute; override;
  end;





{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
begin
 ShowMessage('aaa');
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePage = TabSheet2 then
  begin
    ListView1.Clear;
    Alert_Thread := TAlert_Thread.Create(True);
    with Alert_Thread do
    begin
      priority := tpLower;
      resume;
    end;
  end;
end;



{ Alert_Thread }

procedure TAlert_Thread.Execute;
var
 I : Integer;
begin
  with Form1.DataSource1 do
  begin
    DataSet.First;
    for I := 0 to DataSet.RecordCount-1 do
    begin
       if DataSet.FieldByName('Obj_Name').AsString = '<Deleted Divice>' then
         Continue;

       Form1.ListView1.Items.Add.Caption :=  DataSet.FieldByName('Obj_Name').AsString;
       DataSet.Next;
      //Form1.ListView1.Items.Add := DataSet.FieldByName('Obj_Name').AsString;
    end;
  end;

end;

end.
