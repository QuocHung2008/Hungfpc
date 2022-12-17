uses crt;
var 
	a,b,i,d:integer;
	chuoi,chuoi2,chuoi3,f,chuoi4,chuoi5:string;
Function NT(x: Integer): Boolean;
	Var y: Integer;
		z: Boolean;
	Begin
		z:= True;
		If x = 2 then 
			z:= True;
		For y:= 2 to x - 1 do
			If ( x mod y = 0 ) then
				z:= False; 
		If ( x < 2 ) then  
				z:= False; 
		NT:= z;
	end;
procedure TG(chuoi:string);
	Begin
		chuoi3:='';
		while pos('.',chuoi) <> 0 do
			Begin
				chuoi2:=copy(chuoi,1,pos('.',chuoi));
				while pos(chuoi2,chuoi) <> 0 do
					delete(chuoi,pos(chuoi2,chuoi),length(chuoi2));
				delete(chuoi2,length(chuoi2),1);
				chuoi3:=chuoi3+chuoi2;
			end;
	end;
function TSNT(a:integer):string;
	Begin
		chuoi:='';
		for i:=2 to a do
			if NT(i) = True then
				while a mod i = 0 do
					Begin
						d:=0;
						while a - i >= 0 do
							Begin
								inc(d);
								a:=a-i;
							end;
						a:=d;
						str(i,f);
						chuoi:=chuoi+f+'.';
					end;
		TSNT:=chuoi;
	end;
Begin 
	readln(a);
	readln(b);
	TG(TSNT(a));
	chuoi4:=chuoi3;
	TG(TSNT(b));
	chuoi5:=chuoi3;
	if chuoi5 = chuoi4 then
		Writeln('M và N là số nguyên tố tương đương.')
	else
		Writeln('M và N ko là số tương đương');
end.
