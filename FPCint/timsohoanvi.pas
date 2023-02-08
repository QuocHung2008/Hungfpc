uses crt,hung;
var 
	A: array[1..10] of longint;
	i,n,m,c,k,j,p,t: longint;
	s: string;
Begin
	readln(n,m);
	str(n,s);
	c:= length(s);
	for i:=c downto 1 do
		Begin 
			A[i]:=n mod 10;
			n:= n div 10;
		end;
	bbs(c,A);
	repeat
	Begin
		n:=0;
		for t:=1 to c do
			n:=n*10+A[t];
		if n > m then 
			Break;
		i := c - 1;
		while (i > 0) and (A[i] >= A[i + 1]) do 
			Dec(i);
		if i > 0 then
			begin
				k := c;
				while A[k] <= A[i] do 
					Dec(k); 
				Swap1(A[k], A[i]); 
				j := i + 1; 
				p := c; 
				while j < p do
					begin
						Swap1(A[j], A[p]); 
						Inc(j);
						Dec(p);
					end; 
			end;
	end;
	until i = 0;
	if (n > m) then 
		writeln(n)
	else
		writeln('Khong co so A1 thoa man yeu cau');
end.  





// // uses crt;
// // var 
// // 	a,b,c,i:longint;
// // Begin
// // 	readln(a);
// // 	for i:=1 to a  do
// // 		Begin 
// // 			b:=b+i;
// // 			c:=c+b;
// // 		end;
// // 	writeln(c);
// // end.





// // // Trần Đào Quốc Bảo
// // // uses crt;
// // // var 
// // // 	i,tam,tong,n,dem,i1:int64;
// // // Begin 
// // // 	readln(n);
// // // 	i:=1 ;
// // // 	repeat
// // // 		tong:=tong+i+tam;
// // // 		tam:=tam+i;
// // // 		inc(i);
// // // 		inc(dem);
// // // 		Writeln(tong,' ',i,' ',tam,' ',dem);
// // // 	until dem = n;
// // // 	Writeln(tong);
// // // end.






// uses crt;
// var 
// 	s1,s2:string;
// 	i,i2,n:integer;
// Function readrtol(var x:string):boolean;
// 	var
// 		y:integer;
// 		z:string;
// 	Begin 
// 		readrtol:= false;
// 		z:='';
// 		for y:=length(x) downto 1 do 
// 			z:=z+x[y];
// 		if x = z then 
// 			exit(TRUE);
// 	end;
// Begin
// 	readln(s1);
// 	n:=(length(s1) div 2) + 1;
// 	for i:=n to (length(s1)-1) do
// 		Begin
// 		for i2:=1 to (length(s1)-i+1) do
// 			Begin
// 				s2:=copy(s1,i2,i);
// 				if readrtol(s2) then
// 					break;
// 			end;
// 		if readrtol(s2) = true then
// 				break;
// 		end;
// 	if readrtol(s2) then
// 		Writeln(s2)
// 	else 
// 		Writeln('KHONG');
// end.




