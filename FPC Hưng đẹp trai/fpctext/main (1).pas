uses crt;
var
	chuoi1,chuoi2,chuoi3,chuoi4:string;
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
	for h:='a' to 'z' do
		if pos(h,chuoi2) <> 0 then
			chuoi3:=chuoi3+h;
	write(f2,chuoi3);
	close(f1);
	close(f2);
end.
