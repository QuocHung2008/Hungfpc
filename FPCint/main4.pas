uses crt;
var 
	a,b:longint;
Function NT(x: longint): longint;
	Var y,z: longint;
	Begin
		z:=0;
		For y:= 1 to x -1 do	
			If ( x mod y = 0 ) then
				z:=z+y;
		NT:=z;
	end;	
begin
	Readln(a,b);
	if NT(a) = b then
		Writeln(a,' và ',b,' là hai số thân thiết.')
	else
		Writeln(a,' và ',b,' ko là hai số thân thiết.');
end.