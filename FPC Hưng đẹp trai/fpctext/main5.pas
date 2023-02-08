uses crt;
var 
	f1,f2 :text;
	chuoi1,chuoi2:string;
	h:char;
	b:integer;
begin 
	assign(f1,'xau.inp');
	reset(f1);
	assign(f2,'xau.out');
	rewrite(f2);
	// while not eof(f1) do 
	// 	Begin 
	// 		read(f1,h);
	// 		chuoi1:=chuoi1+h;
	// 	end;
	readln(f1,chuoi1);
	for h:='a' to 'z' do
		chuoi2:=chuoi2+h;
	for b:=1 to length(chuoi1) do
		while pos(chuoi1[b],chuoi2) <> 0 do
			delete(chuoi2,pos(chuoi1[b],chuoi2),1);
	write(f2,chuoi2);
	close(f1);
	close(f2);
end.