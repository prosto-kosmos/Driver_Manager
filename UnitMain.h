//---------------------------------------------------------------------------

#ifndef UnitMainH
#define UnitMainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Data.DB.hpp>
#include <Data.DBXMySQL.hpp>
#include <Data.FMTBcd.hpp>
#include <Data.SqlExpr.hpp>
#include <Data.Win.ADODB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Datasnap.Provider.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.WinXCtrls.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPanel *Panel2;
	TSplitter *Splitter1;
	TPanel *Panel3;
	TSQLConnection *SQLConnection1;
	TDBGrid *DBGrid1;
	TDataSource *DataSource1;
	TDataSetProvider *DataSetProvider1;
	TClientDataSet *ClientDataSet1;
	TButton *Button1;
	TClientDataSet *ClientDataSet2;
	TDataSource *DataSource2;
	TDataSetProvider *DataSetProvider2;
	TDBGrid *DBGrid2;
	TGroupBox *GroupBox1;
	TDBNavigator *DBNavigator1;
	TButton *Button2;
	TButton *Button3;
	TLabeledEdit *LabeledEdit1;
	TLabeledEdit *LabeledEdit2;
	TLabeledEdit *LabeledEdit3;
	TLabeledEdit *LabeledEdit4;
	TSQLTable *SQLTable1;
	TSQLTable *SQLTable2;
	TRadioGroup *RadioGroup1;
	TSearchBox *SearchBox1;
	TSearchBox *SearchBox2;
	TPanel *Panel4;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall RadioGroup1Click(TObject *Sender);
	void __fastcall SearchBox1Change(TObject *Sender);
	void __fastcall SearchBox2Change(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
