// uses crt;
// var 
// 	A: array[1..1000000] of string;
// 	s1:string;
// 	i,n:longint;
// procedure Swap1(var x,y: string);
// 	var 
// 		tmp: string;
// 	Begin
// 		tmp:= x;
// 		x:=y;
// 		y:=tmp;
// 	end;

// procedure bbs(var y: longint);
// 	var 
// 		tmp,tmp2: longint;
// 	Begin 

// 		for tmp:=1 to y do 
// 			for tmp2:= tmp +1 to y do 
// 				if A[tmp] < A[tmp2] then 
// 					Swap1(A[tmp],A[tmp2]);
// 	end;
// Begin 
// 	readln(n);
// 	readln(s1);
// 	s1:=s1+' ';
// 	while s1 <> '' do 
// 		Begin
// 			inc(i);
// 			A[i]:=copy(s1,1,pos(' ',s1)-1);
// 			delete(s1,1,pos(' ',s1));
// 		end;
// 	bbs(n);
// 	for i:=1 to n do
// 		write(A[i]);
// end.




// uses crt;
// var 
// 	n,i,tb,k:longint;
// 	A: array[1..1000] of longint;
// 	f1,f2:text;
// procedure Swap1(var x,y: longint);
// 	var 
// 		tmp: longint;
// 	Begin
// 		tmp:= x;
// 		x:=y;
// 		y:=tmp;
// 	end;
// procedure bbs(var y: longint);
// 	var 
// 		tmp,tmp2: longint;
// 	Begin 
// 		for tmp:=1 to y do 
// 			for tmp2:= tmp +1 to y do 
// 				if A[tmp] > A[tmp2] then 
// 					Swap1(A[tmp],A[tmp2]);
// 	end;
// Begin 
// 	assign(f1,'/Users/macos/Downloads/CODE/fpascals/FPCint/CAU1.INP');
// 	reset(f1);
// 	readln(f1,n);
// 	for i:=1 to n do 
// 		Begin
// 			read(f1,A[i]);
// 			tb:=tb+A[i];
// 		end;
// 	close(f1);
// 	if tb mod 2 <> 0 then
// 		tb:=tb div 2 + 1
// 	else
// 		tb:=tb div 2;
// 	bbs(n);
// 	assign(f2,'/Users/macos/Downloads/CODE/fpascals/FPCint/CAU1.OUT'); rewrite(f2);
// 	for i:=n downto 1 do
// 		Begin 
// 			Write(f2,A[i],' ');
// 			tb:=tb-A[i];
// 			if (tb = 1) or (tb = 0) then
// 				Writeln(f2);
// 		end;
// 	close(f2);
// 	Writeln(tb);
// end.





uses crt;
var 
	A,B: array[1..10000000] of longint;
	C: array[1..10000000] of real;
	f1,f2:text;
	i,n:longint;
procedure Swap1(var x,y: longint);
	var 
		tmp: longint;
	Begin
		tmp:= x;
		x:=y;
		y:=tmp;
	end;
procedure bbs(var y: longint);
	var 
		tmp,tmp2: longint;
		tmp3: real;
	Begin 
		for tmp:=1 to y do 
			for tmp2:= tmp +1 to y do 
				if C[tmp] > C[tmp2] then 
					Begin 
						Swap1(A[tmp],A[tmp2]);
						Swap1(B[tmp],B[tmp2]);
						tmp3:=C[tmp];
						C[tmp]:=C[tmp2];
						C[tmp2]:=tmp3;
					end;
	end;
Begin 
	assign(f1,'/Users/macos/Downloads/CODE/fpascals/FPCint/PHANSO.INP');
	reset(f1);
	readln(f1,n);
	for i:=1 to n do read(f1,A[i]);
	readln(f1);
	for i:=1 to n do read(f1,B[i]);
	close(f1);
	for i:=1 to n do C[i]:=A[i]/B[i];
	bbs(n);
	assign(f2,'/Users/macos/Downloads/CODE/fpascals/FPCint/PHANSO.OUT');
	rewrite(f2);
	for i:=1 to n do Write(f2,A[i],' ');
	Writeln(f2);
	for i:=1 to n do Write(f2,B[i],' ');
	close(f2);
end.













































