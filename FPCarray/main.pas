uses crt;
var 
	A: Array[1..49] of integer;
	k,i,n,b,d: integer;
Begin
	Write('Nhập cái gì đó của mảng: ');
	readln(n);
	d:=n;
	for i:=1 to n do
		Begin
			Write('Nhập A[',i,']:');
			readln(A[i]);
		end;
	Write('Nhập k: ');
	readln(k);
	while k > n do
		Begin
			Write('Nhập k (n > k): ');
			readln(k);
		end;
	for d:=n downto k do 
			A[d+1]:=A[d];

	Write('Nhập m: ');
	readln(A[k]);
	for i:=1 to n+1 do
		Write(A[i]:3);
end.
