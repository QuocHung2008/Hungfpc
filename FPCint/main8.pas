uses crt;
var 
	a: string;
	i,i2:integer;
	f:boolean;
	B: array[1..100] of string;
	C: array[1..100] of Byte;
Begin 
	a:='123456789';
	for i:=1 to 3 do
		Begin
			readln(B[i]);
			for i2:=1 to 9 do
				if pos(a[i2],B[i]) <> 0 then 
					C[i2]:=C[i2]+1;
		end;
	for i:=1 to 3 do
		if pos('0',B[i]) <> 0 then
			C[10]:=C[10]+1;
	if C[10] = 3 then
		Begin
			f:=true;
			Write('0':2);
		end;
	for i:=1 to 9 do
		if C[i] = 3 then
			Begin 
				Write(i:2);
				f:=true;
			end;
	if f = false then
		Writeln('Khong');
end.