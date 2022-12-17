uses crt;
var 
	i,c:integer;
	a:string;
	h:char;
	B: array['a'..'z'] of byte;
Begin 
	readln(a);
	for i:=1 to length(a) do 
		B[a[i]]:=B[a[i]]+1;
	for h:='a' to 'z' do 
		if B[h] > c then 
			c:=B[h];
	for h:='a' to 'z' do 
		if B[h] = c then 
			Write(h,' ');

end.  