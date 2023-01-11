uses crt;
var 
	b,q,n,i,x: integer;
	s1,c,g: string;
	f1:text;
	A: array[1..100] of string;
Begin
	c:='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	assign(f1,'mahoa.inp');
	reset(f1);
	While not eof(f1) do
		Begin 
			readln(f1,n);
			while not eoln(f1) do
				read(f1,s1);
		end;
	close(f1);
	while s1 <> '' do
		Begin
			if (pos(' ',s1) <>  0) then
				Begin
					inc(b);
					A[b]:=copy(s1,1,pos(' ',s1)-1);
					delete(s1,1,pos(' ',s1));
				end 
			else
				Begin
					inc(b);
					A[b]:=s1;
					delete(s1,1,length(s1));
				end ;

		end;
	for q:=1 to b do
		for i:=1 to length(A[q]) do 
			Begin
				x:=((pos(A[q][i],c))+length(A[q])+n);
				if x <= 26 then
					A[q][i]:=c[x]
				else
					Begin
						str((x-26),s1);
						g:=A[q];
						delete(g,i,length(A[q]));
						g:=g+s1;
						delete(A[q],1,length(g));
						A[q]:=g+A[q];
					end;
			end;
	for q:=1 to b do
		Write(A[q],' ');

end.