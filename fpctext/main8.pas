uses crt;
var 
	s1,s2:string;
	b,n,i,k,h,x:integer;
	f1,f2:text;
	A: array[1..100] of integer;
	C: array[1..100] of integer;
Begin 
	assign(f1,'CHENXOA.INP');
	reset(f1);
	while not eof(f1) do
		Begin
			While not eoln(f1) do
				Begin
					inc(n);
					read(f1,A[n]);		
				end;
			read(f1,x,k,h);
		end;
	close(f1);
	C:=A;
	for b:=h to n do 
		C[b]:=C[b+1];
	for b:=n downto k do
		A[b+1]:=A[b];
	A[k]:=x;
	assign(f2,'CHENXOA.OUT');
	rewrite(f2);
	for b:=1 to n+1 do
			Write(f2,A[b],' ');
			// if b:= n+1 then
				Writeln(f2);
			
	for b:=1 to n-1 do
		Write(f2,C[b],' ');
	close(f2);
end.
