uses crt;
var 
	a,b,i,d,cod:integer;
	chuoi,chuoi2,f:string;
	f1,f2:text;
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
Begin 
	// assign(f1,'sotn.inp');
	// reset(f1);
	// assign(f2,'sotn.out');
	// rewrite(f2);
	// readln(f1,chuoi2);
	// close(f1);
	// val(chuoi2,a,cod);
	readln(a);
	for i:=2 to a do
		Begin
			if NT(i) = True then
				Begin    
					while a mod i = 0 do
						Begin
							// inc(b);
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
				end;
		end;
	if chuoi[length(chuoi)] = '.' then
		delete(chuoi,length(chuoi),1);
	Writeln(chuoi);
	// Writeln(f2,chuoi);
	// close(f2);

end.
