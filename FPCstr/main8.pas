uses crt;
var 
	A: array[1..1000] of string;
	D: array[1..1000] of byte;
	i,c:integer;
	s1:string;
Begin 
	readln(s1);
	for i:=1 to length(s1) do 
		Begin 
			A[i]:=copy(s1,1,pos(' ',s1)-1);
			if pos(' ',s1) = 0 then
				Begin
					A[i]:=copy(s1,1,length(s1));
					delete(s1,1,length(s1));
					inc(c);
					break;
				end;
			While pos(A[i],s1) <> 0 do 
				Begin
					delete(s1,pos(A[i],s1),length(A[i]));
					D[i]:=D[i]+1;
				end;
			while copy(s1,1,1) = ' ' do 
				delete(s1,1,1);
			inc(c);
		end;
	for i:=1 to c do
		if D[i] > 1 then
			Write(A[i],' ');
end.
