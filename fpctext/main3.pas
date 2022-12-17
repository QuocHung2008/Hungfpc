uses crt;
var
	chuoi1,chuoi2:string;
	f1,f2:text;
	h:char;
begin
	assign(f1,'SO3.INP');
	reset(f1);
	assign(f2,'KQ2.OUT');
	rewrite(f2);
	while not eof(f1) do
		begin
			read(f1,chuoi1);
			chuoi2:=chuoi2+chuoi1;
		end;
	while chuoi2 <> '' do
	Begin
		Begin
			Write(f2,chuoi2[1]);
			h:=chuoi2[1];
			while pos(h,chuoi2) <> 0 do
				delete(chuoi2,pos(h,chuoi2),1);
		end;
	end;
	write(f2,chuoi2);
	close(f1);
	close(f2);
end.
