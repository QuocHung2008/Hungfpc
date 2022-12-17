Uses crt,PTK1;
Var
	chat,chiso,chiso3,cod: Integer;
	PTKHC: real;
	donchat,cp,cp9,chiso2,chiso4: string;
	ch,i:char;

Begin
	Writeln('1. Don Chat ','2. Hon Hop');
	Write('Nhap: ');
	Readln(chat);
	Case chat of
		 1:
		 Begin
			 Repeat
					 Begin
						Clrscr;
						Write('Nhap ten nguyen to: ');
						Readln(donchat);
						Writeln('Nguyen tu khoi: ',PTK(donchat));
						Write('Nhan ESC de thoat.');
						ch:=readkey;
					 end ;
			 until ch=#27 ;
		 end;
		 2:
		 Begin
			Repeat
				Begin
					Clrscr;
					PTKHC:=0;
					donchat:='';
					Write('Nhap ten nguyen to: ');
					Readln(donchat);
					for i:= 'a' to 'z' do
						begin
						while pos(i,donchat) <> 0 do
							begin
								chiso2:=i;
								chiso:=1;
								cod:=0;
								cp:=copy(donchat,(pos(chiso2,donchat))-1,2);
								delete(donchat,(pos(chiso2,donchat))-1,2);
								chiso4:=copy(donchat,1,1);
								val(chiso4,chiso3,cod);
								if cod = 0 then 
									begin
										chiso:=chiso3;
										delete(donchat,1,1);
									end;
								PTKHC:=(PTK(cp)*chiso)+ PTKHC ;
							end;	 	
						end;
					while donchat <> '' do
						begin
							chiso:=1;
							cod:=0;

							if pos('(',donchat) <> 0 then
								Begin
									cp:=copy(donchat,(pos('(',donchat)),pos(')',donchat));
									delete(donchat,(pos('(',donchat)),(pos(')',donchat))-(pos('(',donchat))+1);

									Writeln(donchat);

									chiso4:=copy(donchat,1,1);
									val(chiso4,chiso3,cod);
									if cod = 0 then 
										begin
											chiso:=chiso3;
											delete(donchat,1,1);
										end;

									Writeln(PTKHC:4:1,chiso:3,cp:10);

									PTKHC:=(PTK(cp)*chiso)+ PTKHC ;
									Writeln(PTKHC:4:1,chiso:3,cp:10);
								end;

							cp9:=copy(donchat,1,1);
							if cp9 <> '(' then
							Begin
							cp:=copy(donchat,1,1);
							delete(donchat,1,1);
							chiso4:=copy(donchat,1,1);
							val(chiso4,chiso3,cod);
							if cod = 0 then 
								begin
									chiso:=chiso3;
									delete(donchat,1,1);
								end;
							end;
							PTKHC:=(PTK(cp)*chiso)+ PTKHC ;
						end;

					Writeln('Phan tu khoi: ',PTKHC:4:1);
					Writeln('Nhan ESC để thoát hoac nhan phim bat ky de tiep tuc.');
					ch:=readkey;
				end;
			until ch = #27;
		End;
	end;
end.
