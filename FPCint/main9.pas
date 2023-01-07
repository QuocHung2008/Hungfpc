uses crt;
var 
	a,b,i,i2,i3:integer;
	c:real;
	s1,s2,s3:string;
	G: array[1..100] of string;
	F: array[1..100] of real;
Begin
	readln(a);
	for i:=1 to a do
		for i2:=1 to a do
// 			for i3:=1 to a do
// 					if (i3*i3=i2*i2+i*i) then
// 						if sqrt(i3*i3) = trunc(sqrt(i3*i3)) then
// 							Begin
// 								inc(b);
// 								str(i,s1);
// 								str(i2,s2);
// 								str(i3,s3);
// 								G[b]:='('+s1+','+s2+','+s3+')';
// 								// if b mod 2 = 1 then
// 									Writeln(G[b],'  ');
// 							end;
// end.

			Begin
				c:=sqrt(i2*i2+i*i);
				if (c = trunc(c)) and (c <= a) then
					if c in F[b]  then
						continue
					else
					Begin
						inc(b);
						str(i,s1);
						str(i2,s2);
						str(c:0:0,s3);
						G[b]:='('+s1+','+s2+','+s3+')';
						F[b]:=c;
						// if b mod 2 = 1 then
							Write(G[b],'  ');
						// Writeln(F[b]:0:0,'... ');
					end;
			end;
end.