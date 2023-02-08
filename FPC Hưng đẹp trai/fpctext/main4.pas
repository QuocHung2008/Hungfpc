uses crt;
var 
	f1,f2:text;
	i:integer;
	h:char;
	b,c,d:string;
Begin
	assign(f1,'NENXAU.INP');
	reset(f1);
	assign(f2,'NENXAU.OUT');
	rewrite(f2);
	// while not eof(f1) do
	// 	begin 
	// 		read(f1,a);
	// 		b:=b+a;
	// 	end;
	readln(f1,b);
	for h:='a' to 'z' do
		while pos(h,b) <> 0 do
			delete(b,pos(h,b),1);
	while pos(' ',b) <> 0 do 
		delete(b,pos(' ',b),1);
	d:=b;
	for h:='A' to 'Z' do 
		While pos(h,b) <> 0 do
			delete(b,pos(h,b),1);
	While b <> '' do 
		Begin 
			delete(d,pos(b[1],d),1);
			delete(b,1,1);
		end;
	Writeln(f2,d);
	for h:='A' to 'Z' do 
		begin
			i:=0;
			While pos(h,d) <> 0 do
				Begin
					inc(i);
					delete(d,pos(h,d),1);
				end;
			if i <> 0 then
				Begin
					str(i,c);
					Write(f2,h+c);
				end;
		end;
	close(f1);
	close(f2);
end.
