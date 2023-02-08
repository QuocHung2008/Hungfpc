uses crt;
var 
	f1,f2:text;
	n,i,j,b:longint;
	A: array[1..100000] of longint;
const
	fi = '/Users/macos/Downloads/CODE/fpascals/fpctext/DEMSO.INP';
	fo = '/Users/macos/Downloads/CODE/fpascals/fpctext/DEMSO.OUT';
Begin 
	assign(f1,fi);
	reset(f1);
	readln(f1,n);
	for i:=1 to n do
		read(f1,A[i]);
	close(f1);
	for i:=1 to n do
		for j:=1 to n do
			if (A[i] > A[j]) and (i < j) then
				inc(b);
	assign(f2,fo);
	rewrite(f2);
	write(f2,b);
	close(f2);
end.
