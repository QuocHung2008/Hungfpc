uses crt;
var 
	A: array[1..100] of integer;
	b,i,i1,i2,d,c,cod: integer;
	chuoi1,chuoi2: string;
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
Function gt(n:integer):longint;
   Var kq,i:integer;
   Begin
   kq:=1;
    For i:=1 to n do
      kq:=kq*i;
    gt:=kq;
   end;

Begin
	Readln(b);
	for i:=1 to b do
		readln(A[i]);
	for i:=1 to gt(b) do
		Begin
			For i2 :=1 to b do 
				Begin
					for i1:=1 to b do 
						Begin
							Str(A[i1],chuoi2);
							chuoi1:=chuoi1+chuoi2  ;
						end;
					Writeln(chuoi1);
					val(chuoi1,c,cod);
					if NT(c) = true then
						Writeln(chuoi1);
	
					d:=A[i2];
					A[i2]:=A[b];
					A[b]:=d;
				end;

		end;
end.