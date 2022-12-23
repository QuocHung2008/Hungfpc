uses crt;
var 
	B: array [1..100] of string;
	s1:string;
	i,g,m:integer;
	f1,f2:text;
Begin
	assign(f1,'PNT.inp');
	reset(f1);
	readln(f1,s1);
	close(f1);
	g:=1;
	for i:=1 to length(s1) do 
		Begin
			if s1[i] in ['0'..'9'] then
				B[g]:=B[g]+s1[i]
			else
				inc(g);
			if g = 1 then 
				m:=length(B[1])
			else 
				if length(B[g]) > m then
					m:=length(B[g]);
		end;
	assign(f2,'PNT.out');
	rewrite(f2);
	writeln(f2,m);
	close(f2);
end.
