// uses crt;
// type
// 	F = (500000,200000,100000,50000,20000,10000,5000);
// var 
// 	i,n,c:longint;
// 	X: array[1..7] of longint;
// 	A:F;
// Begin
// 	readln(n);
// 	for i:= 1 to 7 do
// 		Begin
// 			if (n div A[i] <> 0) then
// 				Begin
// 					n:=n-A[i]*(n div A[i]);
// 					X[i]:=X[i] + (n div A[i]);
// 					c:=c + (n div A[i]);
// 				end;
// 		end;
// 	Writeln(c);
// 	for i:=1 to 7 do
// 		if X[i] <> 0 then
// 			Writeln(x[i],' ',A[i]);

// end.




uses crt;
var 
	n,g,i,i2,max,j,c:longint;
	A,B: array[1..1000000] of longint;
	s:string;
procedure Swap1(var x,y: longint);
		var 
			tmp: longint;
		Begin
			tmp:= x;
			x:=y;
			y:=tmp;
		end;
function btl(var x: longint):boolean;
	var 
		y:longint;
	Begin
		btl:=true;
		for y:=1 to x do
			if A[y] < A[y+1] then
				exit(false);
	end;
procedure bbs1(var z,x: longint);
	var
		y,tmp: longint;
	Begin
		for y:=z to x do
			for tmp:= y+1 to x do
				if A[y] > A[tmp] then
					Swap1(A[y],A[tmp]);
	end;
Begin
	readln(n);
	str(n,s);
	c:= length(s);
	for i:=c downto 1 do
		Begin 
			A[i]:=n mod 10;
			n:= n div 10;
			inc(g);
		end;
	if btl(g) = true then
		Begin
			Writeln('sdfsdcv');
			halt;
		end;
	B:=A;
	for i:=1 to g do
		Begin
			max:=10;
			for i2:=i+1 to g do
				if (B[i2] > A[i]) and (B[i2] < max) then
					Begin
						max:=B[i2];
						Swap1(B[i2],B[i]);
					end;
			Writeln(g);
			if (B[i] > A[i]) then
				Begin
					j:=i+1;
					bbs1(j,g);
					break;
				end;
		end;
	for i:=1 to g do
		write(B[i]);
end.

































