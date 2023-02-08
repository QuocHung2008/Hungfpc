uses crt;
var 
	n,i: longint;
	B,A: array[1..7] of longint;
// const
	// A=[500000,200000,100000,50000,20000,10000,5000];
Begin
	readln(n);
	A[1]:=500000;
	A[2]:=200000;
	A[3]:=100000;
	A[4]:=50000;
	A[5]:=20000;
	A[6]:=10000;
	A[7]:=5000;
	for i:=1 to 7 do
		Begin
			if n div A[i] <> 0 then
				Begin 
					n:=n - (A[i]*(n div A[i]));
					B[i]:=B[i]+1;
				end;
			if B[i] <> 0 then
				Writeln(B[i],' ',A[i]);
		end;
	if n <> 0 then
		Writeln('-1',n);
end.





