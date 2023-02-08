uses crt;
var
	chuoi1,chuoi2,chuoi3,chuoi4:string;
	a,b,d,cod,c:integer;
	h:char;
begin
	readln(chuoi1);
	while chuoi1 <> '' do
		begin
			while copy(chuoi1,1,1) = ' ' do
				delete(chuoi1,1,1);
			chuoi2:= copy(chuoi1,1,pos(' ',chuoi1));
			delete(chuoi1,1,pos(' ',chuoi1));
			chuoi3:= chuoi3 + chuoi2;
			if pos(' ', chuoi1) = 0 then
				begin
				chuoi2:=copy(chuoi1,1,length(chuoi1));
				chuoi3:=chuoi3+ chuoi2;
				delete(chuoi1,1,length(chuoi1));
				end;
		end;
	chuoi4:= chuoi3;
	if copy(chuoi4,length(chuoi4),1) = ' ' then
		delete(chuoi4,length(chuoi4),1);
	for h:='A' to 'Z' do
		begin
			while pos(h,chuoi3) <> 0 do
				begin
					inc(a);
					delete(chuoi3,pos(h,chuoi3),1);
				end;
		end;
	
	for h:='a' to 'z' do
		while pos(h,chuoi3) <> 0 do
			begin
				inc(b);
				delete(chuoi3,pos(h,chuoi3),1);
			end;
	while chuoi3 <> '' do
		begin
			val(copy(chuoi3,1,1),c,cod);
			if cod = 0 then
				begin
					inc(d);
					delete(chuoi3,1,1);
				end
			else
				delete(chuoi3,1,1);
		end;
		Writeln('Xâu chuẩn hóa: ',chuoi4);
		Writeln('Số chữ cái in thường: ', b);
		writeln('Số chữ cái in hoa: ',a);
		Writeln('Số chữ số: ',d);
		readln;
end.
