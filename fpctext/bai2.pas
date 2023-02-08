uses crt;
var 
	f1,f2:text;
	Max,b,i,c,n,g,Tong:longint;
	A: array[1..1000] of longint;
const
	fi = '/Users/macos/Downloads/CODE/fpascals/fpctext/GIAMGIA.INP';
	fo = '/Users/macos/Downloads/CODE/fpascals/fpctext/GIAMGIA.OUT';
Begin 
	assign(f1,fi);
	reset(f1);
	readln(f1,n);
	for i:=1 to n do 
		read(f1,A[i]);
	close(f1);
	c:= n div 3;
	b:=1;
	for i:=1 to c do
		Begin 
			Max:=A[b];
			for g:=0 to 2 do
				if Max < A[b+g] then
					Max:= A[b+g];
			Tong:=Tong + A[b] + A[b+1] + A[b+2] - Max;
			b:=b+3;
		end;
	Tong:=Tong + A[b] + A[b+1];
	assign(f2,fo);
	rewrite(f2);
	write(f2,Tong);
	close(f2);
end.