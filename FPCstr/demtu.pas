// // uses crt;
// // var
// // 	s1:string;
// // 	i,a:integer;
// // Begin
// // 	readln(s1);
// // 	while s1[length(s1)] = ' ' do 
// // 		delete(s1,length(s1),1);
// // 	while s1[1] = ' ' do 
// // 		delete(s1,1,1);
// // 	// for i:=1 to length(s1) do
// // 		While (s1[i] = ' ') and (s1[i-1] = ' ') do
// // 			delete(s1,i,1);
// // 	s1:=s1+' ';
// // 	for i:=1 to length(s1) do
// // 		if s1[i] = ' ' then
// // 			inc(a);
// // 	writeln(a);
// // end.



// uses crt;
// var
// 	n,v,i,k,u2,v2:longint;
// 	A,B: array[1..10000] of integer;

// Function NT(var x: longint): Boolean;
// 	Var y: longint;
// 	Begin
// 		NT:=true;
// 		if (x = 2) then
// 			exit(true);
// 		if x < 2 then 
// 			exit(false)
// 		else
// 			for y:=2 to trunc(sqrt(x)) do
// 				if x mod y = 0 then
// 					exit(false);
// 	end;

// Begin 
// 	readln(n);
// 	for v:=2 to (n div 2) do 
// 		Begin	
// 			v2:=v;
// 			u2:=n-v;
// 			if (NT(v2) = True) and (NT(u2) = True) and (v2 < u2) then 
// 				Begin
// 					inc(k);
// 					A[k]:=v2;
// 					B[k]:=u2;
// 				end;
// 		end;

// 	Writeln(k);
// 	for i:=1 to k do 
// 		Writeln(A[i],' ',B[i]);
// end.



// // uses crt;
// // var 
// // 	f1,f2:text;
// // 	i,n,min:longint;
// // 	A: array[1..100000] of longint;

// // procedure Swap1(var x,y: longint);
// // 	var 
// // 		tmp: longint;
// // 	Begin
// // 		tmp:= x;
// // 		x:=y;
// // 		y:=tmp;
// // 	end;

// // procedure bbs(var y: longint);
// // 	var 
// // 		tmp,tmp2: longint;
// // 	Begin 
// // 		for tmp:=1 to y do 
// // 			for tmp2:= tmp +1 to y do 
// // 				if A[tmp] > A[tmp2] then 
// // 					Swap1(A[tmp],A[tmp2])
// // 	end;
// // Begin 
// // 	assign(f1,'/Users/macos/Downloads/CODE/fpascals/FPCstr/TIMPT.INP');
// // 	reset(f1);
// // 	read(f1,n);
// // 	readln(f1);
// // 	for i:=1 to n do
// // 		read(f1,A[i]);
// // 	close(f1);
// // 	bbs(n);
// // 	min:=A[5] - A[1];
// // 	for i:=1 to n-4 do	
// // 		if (A[i+4]- A[i] < min) then 
// // 			min:=A[i+4] - A[i];
// // 	assign(f2,'/Users/macos/Downloads/CODE/fpascals/FPCstr/TIMPT.OUT');
// // 	rewrite(f2);
// // 	write(f2,min);
// // 	close(f2);
// // end.




uses crt;
var 
	s1,s2,min,max:string;
	i,k:integer;
Begin
	readln(s1,k);
	max:='0';
	for i:=1 to length(s1)-k do
		if s1[i] > max then
			max:=s1[i];
	s2:=copy(s1,pos(max,s1),length(s1));
	while length(s2) > k do
		Begin
			min:='9';
			for i:=1 to length(s2) do 
				if s2[i] < min then
					min:=s2[i];
			delete(s2,pos(min,s2),1);
		end;
	writeln(s2);
end. 




















