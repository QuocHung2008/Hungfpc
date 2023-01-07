uses crt;
var 
	s1,s2,x:string;
	b,n,i,k,h:integer;
	f1,f2:text;
	A: array[1..100] of string;
	C: array[1..100] of string;
// Procedure AR(var s:string)
// 	Begin 
// 	b:=1;
// 	for i:=1 to length(s1) do 
// 		Begin 
// 			if s1[i] in ['0'..'9'] then 
// 				Begin 
// 					A[b]:=A[b] + s1[i];
// 					// delete(s1,i,1);
// 				end
// 			else 
// 				inc(b);
// 			// while s1[1] = ' ' do
// 			// 	delete(s1,1,1);
		
// 		end;
// 	end;
Begin 
	assign(f1,'CHENXOA.INP');
	reset(f1);
	n:=1;
	while not eof(f1) do
		Begin
			While not eoln(f1) do
				Begin
					read(f1,A[n]);
					inc(n);
				end;
			readln(f1);
			read(f1,x,k,h);
		end;
	// insert(x,A,k);
	close(f1);
	Writeln(n);
	Write(x,h,k);
	for i:=1 to n do
		writeln(A[i]);
	// for b:=n downto k do
	// 	A[b+1]:=A[b];
	// A[k]:=x;
	// for b:=1 to n do
	// 	Write(A[b],' ');
end.
