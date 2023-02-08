uses crt;
var 
	b,q,n: integer;
	c,d,e: string;
Begin
	c:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	readln(e);
	readln(n);
	d:=e;
	for b:=1 to length(e) do
		Begin
			if pos(e[b],c) + n > 26 then
				Begin
					q:= pos(e[b],c) + n -26;
					e[b]:=c[q];
				end
			else
				e[b]:=c[(pos(e[b],c) + n)];
			if d[b] = ' ' then
				e[b]:=' ';
		end;
	writeln(e);
end. 