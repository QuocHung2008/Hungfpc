uses crt;
var 
	a,b,c,d,i,e,j,y,t,u:integer;
	F: array[1..100] of integer;
Begin 
	readln(a);
	b:=a div 30;
	for i:= 1 to b do 
		F[i]:=30;
	c:=a mod 30;
	if c < 7 then
		Begin
		d:=(a mod 30) div b;
			for i:= 1 to b do
				Begin	
					F[i]:=F[i]+d;
					c:=c-d;
				end;
		end
	else
		Begin
			Writeln('1 phong ',c);
			inc(u);
		end;
		while (c <> 0) and (c < 7) do
			for i:= 1 to c do
				Begin
					F[i]:=F[i]+1;
					c:=c-1;
				end;
	y:=F[1];
	for i:= 1 to b do
		if F[i] <> F[i+1] then
			Begin
				t:=F[i+1];
				break;
			end;
	for i:= 1 to b do
		if F[i] = y then
			inc(e)
		else
			inc(j);
	u:=u+e+j;
	Writeln('Xep dc:',u);
	Writeln('Trong dos: ',e,' phong ',y,',', j,' phong ',t);

		
end.