{ This file was automatically created by Lazarus. Do not edit!
This source is only used to compile and install the package.
 }

unit LazColorPalette; 

interface

uses
  ColorPalette, LazarusPackageIntf; 

implementation

procedure Register; 
begin
  RegisterUnit('ColorPalette', @ColorPalette.Register); 
end; 

initialization
  RegisterPackage('LazColorPalette', @Register); 
end.
