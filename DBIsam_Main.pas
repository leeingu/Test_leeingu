unit DBIsam_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, dbisamct, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TDBIsamMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StartBtn: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    TreeView1: TTreeView;
    ListView1: TListView;
    procedure StartBtnClick(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
    var
      Search_Thread : TThread;
  public
    { Public declarations }
  end;

var
  DBIsamMain: TDBIsamMain;

implementation

uses Search_Thread,Search_Thread2;
{$R *.dfm}

procedure TDBIsamMain.StartBtnClick(Sender: TObject);
begin
  if StartBtn.BorderStyle = bsNone then
  begin
    StartBtn.BorderStyle := bsSingle;
    try
      Search_Thread:= TSearchThread.Create;
      with TSearchThread(Search_Thread) do
      begin
        Init_Dir('C:\Users\Unreal\Desktop');
        priority := tpNormal;
        resume;
      end;
    finally
      //Search_Thread.Free;
    end;
  end
  else if StartBtn.BorderStyle = bsSingle then
  begin
    StartBtn.BorderStyle := bsNone;
  end;

end;

procedure TDBIsamMain.TreeView1Click(Sender: TObject);
begin
  if TreeView1.Selected <> Nil then
  begin

  end;
end;

end.
