uses crt;
var 
	b,c,d:string;
	f1,f2:text;
	i,t,cod:integer;
Begin
	assign(f1,'BL2.INP');
	reset(f1);
	readln(f1,b);
	close(f1);
	while pos('.', b)<> 0 do
		delete(b,pos('.', b),1);
	for i:=length(b) downto 1 do 
		d:=d+b[i];
	while d <> '' do 
		Begin
			 c:=copy(d,1,3);
			 delete(d,1,3);
			 val(c,i,cod);
			 t:=t+i;
		end;
	assign(f2,'BL2.OUT');
	rewrite(f2);
	writeln(f2,t);
	close(f2);


end.
	// while pos('.',b) <> 0 do 
		