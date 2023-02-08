uses crt;
var 
	n,i,j,z:longint;
	s1:string;
	a: array[1..1000000] of integer;
Begin 
	readln(n);
	str(n,s1);
	for i:=length(s1) downto 1 do 
		Begin
		a[i]:=n mod 10;
		n:=n div 10;
		end;
	for i:= 1 to length(s1) do
		for j:= i to length(s1) do
			if (a[i] < a[j]) then 
				Begin
					z:=a[i];
					a[i]:=a[j];
					a[j]:=z;
				end;
	for i:=1 to length(s1) do
		Write(a[i],' ');
end.
