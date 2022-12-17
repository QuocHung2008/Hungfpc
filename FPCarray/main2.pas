uses crt;
var 
	N: Array[1..100] of integer;
	a,b,c,d,i: integer;
Function NT(x: Integer): Boolean;
	Var y: Integer;
		z: Boolean;
	Begin
		z:= True;
		If x = 2 then 
			z:= True;
		For y:= 2 to x - 1 do
			If ( x mod y = 0 ) then
				z:= False; 
		If ( x < 2 ) then
				z:= False; 
		NT:= z;
	end;
Begin
	Write('Nhập N:');
	Readln(d);
	for i:=1 to d do 
		Begin
			Write('nhaapj: ');
			readln(N[i]);
			if (N[i] mod 2 = 0) then
				inc(a)
			else
				inc(b);
			if NT(N[i])=true then
				c:=c+1;
		end;
	Writeln('Số chẳn:', a);
	Writeln('Số lẻ:',b);
	Writeln('Số nguyên tố:',c);
end.  

					



