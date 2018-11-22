unit aslib3code;

interface



function CodeString(aStr:String;aPassword:String='');
function DecodeString(aStr:String;aPassword:String='');
function SetDefaultPassword(aPassword:String='');

implementation

const
 _OriginalDefaultPassword='YouHaveToChangeIt';
var
 _DefaultPassword: String;

function CodeString(aStr:String;aPassword:String='');
//
end;

function DecodeString(aStr:String;aPassword:String='');
//
end;

function SetDefaultPassword(aPassword:String='');
begin
 if aPassword<>''
  then _DefaultPassword:=aPassword
  else _DefaultPassword:=_OriginalDefaultPassword;
end

initialization
 SetDefaultPassword(_OriginalDefaultPassword);
end.



