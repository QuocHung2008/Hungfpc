uses crt;
var 
	f:text;
	a: integer;
Begin
	assign(f,'SO1.inp');
	reset(f);
	readln(f,a);
	writeln(a);
	close(f)
end.