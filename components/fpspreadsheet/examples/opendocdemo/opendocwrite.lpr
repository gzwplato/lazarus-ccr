{
opendocwrite.dpr

Demonstrates how to write an OpenDocument file using the fpspreadsheet library

AUTHORS: Felipe Monteiro de Carvalho
}
program opendocwrite;

{$mode delphi}{$H+}

uses
  Classes, SysUtils, fpspreadsheet, fpsallformats, laz_fpspreadsheet;

var
  MyWorkbook: TsWorkbook;
  MyWorksheet: TsWorksheet;
  MyFormula: TRPNFormula;
  MyDir: string;
  i: Integer;
  a: TStringList;
begin
  // Open the output file
  MyDir := ExtractFilePath(ParamStr(0));

  // Create the spreadsheet
  MyWorkbook := TsWorkbook.Create;
  MyWorksheet := MyWorkbook.AddWorksheet('My Worksheet');

  // Write some number cells
  MyWorksheet.WriteNumber(1, 1, 1.0);
  MyWorksheet.WriteNumber(1, 2, 2.0);
  MyWorksheet.WriteNumber(1, 3, 3.0);
  MyWorksheet.WriteNumber(1, 4, 4.0);

{ Uncommend this to test large XLS files
  for i := 2 to 20 do
  begin
    MyWorksheet.WriteAnsiText(i, 0, ParamStr(0));
    MyWorksheet.WriteAnsiText(i, 1, ParamStr(0));
    MyWorksheet.WriteAnsiText(i, 2, ParamStr(0));
    MyWorksheet.WriteAnsiText(i, 3, ParamStr(0));
  end;
}

  // Write the formula E1 = A1 + B1
  // or, in RPN: A1, B1, +
(*  SetLength(MyFormula, 3);
  MyFormula[0].TokenID := INT_EXCEL_TOKEN_TREFV; {A1}
  MyFormula[0].Col := 0;
  MyFormula[0].Row := 0;
  MyFormula[1].TokenID := INT_EXCEL_TOKEN_TREFV; {B1}
  MyFormula[1].Col := 1;
  MyFormula[1].Row := 0;
  MyFormula[2].TokenID := INT_EXCEL_TOKEN_TADD;  {+}
  MyWorksheet.WriteRPNFormula(0, 4, MyFormula);

  // Creates a new worksheet
  MyWorksheet := MyWorkbook.AddWorksheet('My Worksheet 2');

  // Write some string cells
  MyWorksheet.WriteUTF8Text(1, 1, 'First');
  MyWorksheet.WriteUTF8Text(1, 2, 'Second');
  MyWorksheet.WriteUTF8Text(1, 3, 'Third');
  MyWorksheet.WriteUTF8Text(1, 4, 'Fourth');
  *)

  // Save the spreadsheet to a file
  MyWorkbook.WriteToFile(MyDir + 'test', sfOpenDocument);
  MyWorkbook.Free;
end.

