uses crt;
var 
	A: array[1..100] of string;
	F: array[1..100] of longint;
	chuoi1,chuoi2: string;
	i,d,cod:longint;
Begin 
	for i:=1 to 5 do
		Begin 	
			write('nhap a',i,':');
			readln(chuoi1);
			chuoi2:=chuoi2+chuoi1;
		end;
	for i:=1 to 3 do 
		Begin 
			A[i]:=copy(chuoi2,1,9);
			val(A[i],F[i],cod);
			delete(chuoi2,1,3);
		end;
	if (F[1] > F[2]) then
		Begin 
			d:=F[1];
			F[1]:=F[2];
			F[2]:=d;
		end;
	if (F[2] > F[3]) then
		Begin
			d:=F[2];
			F[2]:=F[3];
			F[3]:=d;
		end;
	for i:=1 to 3 do
		Write(F[i],' ');
end.
