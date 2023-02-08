uses crt;
var 
	A: array[1..100] of integer;
	B: array[1..100] of integer;
	i,c,d,n,m,i1:integer;
Begin
	Read(n);
	for i:=1 to n do
		Begin
			Write('Nhập[',i,']:');
			readln(A[i]);
		end;
	Write('Nhập m:');
	readln(m);
	for i:=1 to m do
		d:=d+A[i];
	for i:=1 to (n - m +1) do 
		Begin
			c:=0;
			for i1:=0 to m-1 do 
				c:=c+A[i1+i];
			if c <=  d then
				Begin
					for i1:=0 to m-1 do
						B[i1+1]:=A[i1+i];
					d:=c;
				end;
		end;	
	Write('Mảng con có tổng nhỏ nhất là: ');
	for i:=1 to m do 
		Write(B[i]:4);
	Writeln;
	Writeln('Tổng: ',d);
end. 