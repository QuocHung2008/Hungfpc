uses crt;
var 
	a,b,i,d:integer;
	chuoi,f,h:string;
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
	readln(a);
	for i:=2 to a do
		Begin
			if (a > 1) and (NT(a) = false) then
				Begin
					if NT(i) = True then
						Begin    
							b:=0;
							while a mod i = 0 do
								Begin
									inc(b);
									d:=0;
									while a - i >= 0 do
										Begin
											inc(d);
											a:=a-i;
										end;
									a:=d;
									// str(i,f);
									// chuoi:=chuoi+f+'.';
								end;
							str(b,h);
							str(i,f);
							if b > 1 then
								chuoi:=chuoi+f+'^'+h+'.'
							else
								chuoi:=chuoi+f+'.';
						end;
				end;
		end;
	if NT(a) = true then
		Begin
			str(a,h);
			chuoi:=chuoi+h;
		end;
	if chuoi[length(chuoi)] = '.' then
		delete(chuoi,length(chuoi),1);
	Writeln(chuoi);
	// Writeln(b);

end.
