uses crt;
var
	a,b,c:string;
	i:integer;
Begin 
	readln(a);
	a:=lowercase(a);
	While a[1] = ' ' do 
		delete(a,1,1);
	a[1]:=upcase(a[1]);
	for i:=1 to length(a) do 
		Begin
			while (a[i]=' ') and (a[i+1]=' ') do
				delete(a,i+1,1);
			if a[i]=' ' then 
				a[i+1]:=Upcase(a[i+1]);
		end;
	for i:=length(a) downto 1 do
		if a[i] = ' ' then
			Begin
				c:=copy(a,i+1,length(a));
				b:=copy(a,1,i-1);
				break;
			end;
	Writeln(a);
	Writeln(b);
	Writeln(c);
end.