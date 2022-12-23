uses crt;
var 
	A: array [1..100] of integer;
	b,i,c:integer;
	s1,s2:string;
	f:boolean;

Function NT(x: Integer): Boolean;
	Var y: Integer;
		z: Boolean;
	Begin
		If ( x < 2 ) then z:= False; 
		For y:= 2 to trunc(sqrt(x)) do	
		If ( x mod y = 0 ) then exit(false);
	end;	
begin
	readln(b);

	str(b,s1);

	for i:=1 to length(s1) do
		Begin 
			if length(s1) = 1 then
				f:=NT(b)
			else
				Begin 
					c:=b div 10;
					str(c,s2);
					s1:=s2;
					f:=NT(c);
				end;
		end;
	if f = false then
		Writeln('1');
end.